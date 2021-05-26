import 'package:fire_starter/helpers/helpers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:fire_starter/localizations.dart';
import 'package:fire_starter/services/auth_service.dart';
import 'package:fire_starter/ui/components/components.dart';

class SignInController extends GetxController {
  static SignInController to = Get.find();
  static AuthService _authService = Get.find();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final RxBool waitingForOTP = false.obs;
  String? _verificationId;
  String? phoneNumber;
  ConfirmationResult? _confirmationResult;

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    // phoneController?.dispose();
    // nameController?.dispose();
    // otpController?.dispose();
    super.onClose();
  }

  //Method to handle user sign in using email and password
  requestOTP(BuildContext context, String phone) async {
    phoneNumber = phone;
    GetLogger.to.v('Sending OTP to $phone ');
    final labels = context.localizations;
    if (GetPlatform.isAndroid) showLoadingIndicator();
    if (!kIsWeb)
      try {
        Future.delayed(Duration(seconds: 10)).then((value) => hideLoadingIndicator());
        await _auth.verifyPhoneNumber(
            phoneNumber: phone,
            verificationCompleted: (credential) {
              FirebaseAuth.instance.signInWithCredential(credential);
              hideLoadingIndicator();
            },
            timeout: const Duration(seconds: 10),
            verificationFailed: (error) {
              GetLogger.to.e(error);
              hideLoadingIndicator();
              showSnackBar(labels.auth.signInErrorTitle, labels.auth.signInErrorPhone);
            },
            codeSent: (verificationId, __) {
              waitingForOTP.value = true;
              _verificationId = verificationId;
              showSnackBar(labels.auth.otpVerificationSentTitle, labels.auth.otpVerificationSent);
            },
            codeAutoRetrievalTimeout: (_) => hideLoadingIndicator());
        // hideLoadingIndicator();
      } catch (error) {
        hideLoadingIndicator();
        GetLogger.to.e(error);
        waitingForOTP.value = false;
        showSnackBar(labels.auth.signInErrorTitle, labels.auth.signInErrorPhone);
      }
    else {
      _confirmationResult = await _auth.signInWithPhoneNumber(phone);
      if (_confirmationResult?.verificationId != null) waitingForOTP.value = true;
      hideLoadingIndicator();
    }
  }

  //Method to handle user sign in using email and password
  verifyOTP(BuildContext context) async {
    String code = otpController.text.trim();
    GetLogger.to.v('Using OTP $code ');
    final labels = context.localizations;
    showLoadingIndicator();
    if (kIsWeb) {
      UserCredential? userCredential = await _confirmationResult?.confirm(code);
      hideLoadingIndicator();
    }
    try {
      await _auth.signInWithCredential(PhoneAuthProvider.credential(
        verificationId: _verificationId!,
        smsCode: code,
      ));
      hideLoadingIndicator();
    } catch (error) {
      hideLoadingIndicator();
      showSnackBar(labels.auth.signInErrorTitle, labels.auth.signInErrorPhone);
    }
  }

  // Sign out
  Future<void> signOut() {
    nameController.clear();
    phoneController.clear();
    otpController.clear();
    waitingForOTP.value = false;
    return _authService.signOut();
  }

  cancelPhoneVerification() {
    waitingForOTP.value = false;
    otpController.clear();
  }

  Future<User?> signInAnonymously() async {
    UserCredential userCredential = await FirebaseAuth.instance.signInAnonymously();
    return userCredential.user;
  }

  Future<User?> signInWithApple() async {
    if (kIsWeb) {
      GetLogger.to.d('Web Signin');
      final oAuthProvider = OAuthProvider('apple.com')..addScope('email')..addScope('name');
      GetLogger.to.d(oAuthProvider.toString());

      UserCredential userCredential = await FirebaseAuth.instance.signInWithPopup(oAuthProvider);
      return userCredential.user;
    } else {
      final appleIdCredential = await SignInWithApple.getAppleIDCredential(scopes: [AppleIDAuthorizationScopes.email, AppleIDAuthorizationScopes.fullName]);

      final oAuthProvider = OAuthProvider('apple.com');
      final credential = oAuthProvider.credential(idToken: appleIdCredential.identityToken, accessToken: appleIdCredential.authorizationCode);
      UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      return userCredential.user;
    }
  }

  Future<User?> signInWithGoogle() async {
    // Trigger the authentication flow
    if (kIsWeb) return signInWithGoogleWeb();

    await GoogleSignIn().signOut(); // to ensure you can sign in different user.

    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) return null;

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    // Create a new credential
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

    // onSocialLogin(userCredential.user);
    return userCredential.user;
  }

  Future<User?> signInWithGoogleWeb() async {
    GetLogger.to.i('Using web siginin');
    GoogleAuthProvider googleProvider = GoogleAuthProvider();
    UserCredential userCredential = await FirebaseAuth.instance.signInWithPopup(googleProvider);
    return userCredential.user;
  }
}

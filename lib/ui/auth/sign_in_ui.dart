import 'package:fire_starter/controllers/theme_controller.dart';
import 'package:fire_starter/fire_starter.dart';
import 'package:fire_starter/services/package_info.dart';
import 'package:fire_starter/ui/components/widgets/link_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'sign_in_controller.dart';
import 'package:fire_starter/ui/components/widgets/glass/blob.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:core';
import 'package:get/get.dart';
import 'package:fire_starter/localizations.dart';
import 'package:fire_starter/ui/components/components.dart';
import 'package:fire_starter/helpers/helpers.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignInUI extends StatelessWidget {
  static Widget builder([RouteSettings? routeSettings]) =>
      GetBuilder<SignInController>(init: SignInController(), builder: (controller) => SignInUI(controller));

  SignInUI(this._signInController);
  final SignInController _signInController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(body: BlobBackground(child: Obx(() => buildForm(context))));
  }

  Form buildForm(BuildContext context) {
    final labels = context.localizations;
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  PackageInfoService.appName,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2!.copyWith(color: Theme.of(context).colorScheme.primary.withAlpha(120)),
                ),
                LogoGraphicHeader(),
                SizedBox(height: 48.0),
                if (!_signInController.waitingForOTP.value)
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: ThemeController.to.appTheme.value.kGradientBoxDecoration(context),
                      child: IntlPhoneField(
                        controller: _signInController.phoneController,
                        autofocus: true,
                        countries: FireStarter.settings['auth']?['countries'] ?? ['IN', 'US', 'CA', 'JP'],
                        style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary.withAlpha(120)),
                        decoration: InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.only(top: 24, bottom: 2, right: 24)),
                        initialCountryCode: PackageInfoService.country,
                        onSaved: (PhoneNumber? number) {
                          if ((number?.completeNumber) != null) _signInController.requestOTP(context, number!.completeNumber);
                        },
                      ))
                else
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: ThemeController.to.appTheme.value.kGradientBoxDecoration(context),
                    child: FormInputFieldWithIcon(
                      controller: _signInController.otpController,
                      iconPrefix: Icons.vpn_key,
                      labelText: labels.auth.enterOTP,
                      validator: Validator(labels).number,
                      maxLength: 6,
                      keyboardType: TextInputType.phone,
                      onChanged: (value) => null,
                      onSaved: (value) => _signInController.phoneController.text = value ?? '',
                    ),
                  ),
                FormVerticalSpace(),
                if (!_signInController.waitingForOTP.value)
                  PrimaryButton(
                      labelText: labels.auth.requestOTP,
                      onPressed: () {
                        if (_formKey.currentState != null && _formKey.currentState!.validate()) _formKey.currentState!.save();
                      })
                else
                  PrimaryButton(
                      labelText: labels.auth.signInButton,
                      onPressed: () async {
                        if (_formKey.currentState != null && _formKey.currentState!.validate()) _signInController.verifyOTP(context);
                      }),
                FormVerticalSpace(),
                if (!_signInController.waitingForOTP.value &&
                    ((FireStarter.settings['auth']?['appleSignIn'] == true) || GetPlatform.isMacOS || GetPlatform.isIOS))
                  LinkButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(MdiIcons.apple),
                          Text(' ' + labels.auth.appleSignIn,
                              style: Theme.of(context).textTheme.button?.copyWith(fontSize: 18, color: Theme.of(context).accentColor)),
                        ],
                      ),
                      onPressed: () async {
                        try {
                          await _signInController.signInWithApple();
                          // Get.toNamed('home');
                        } catch (e) {
                          showSnackBar('Error', e.toString());
                        }
                      }),
                if (!_signInController.waitingForOTP.value &&
                    ((FireStarter.settings['auth']?['googleSignIn'] == true) || GetPlatform.isAndroid || GetPlatform.isWeb))
                  LinkButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(MdiIcons.google),
                          Text(' ' + labels.auth.googleSignIn,
                              style: Theme.of(context).textTheme.button?.copyWith(fontSize: 18, color: Theme.of(context).accentColor)),
                        ],
                      ),
                      onPressed: () async {
                        try {
                          await _signInController.signInWithGoogle();
                        } catch (e) {
                          showSnackBar('Error', e.toString());
                        }
                      }),
                if (_signInController.waitingForOTP.value)
                  TextButton(
                      child: Text(labels.auth.otpVerificationChangeNumber(phone: _signInController.phoneNumber ?? '')),
                      onPressed: () => _signInController.cancelPhoneVerification()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

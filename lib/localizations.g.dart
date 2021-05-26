// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localizations.dart';

// **************************************************************************
// SheetLocalizationGenerator
// **************************************************************************

final localizedLabels = <Locale, AppLocalizationsData>{
  Locale.fromSubtags(languageCode: 'en'): const AppLocalizationsData(
    validator: const AppLocalizationsDataValidator(
      amount: 'Please enter a number i.e. 250 - no dollar symbol and no cents',
      notEmpty: 'This is a required field.',
      number: 'Please enter a number.',
      name: 'Please enter a name.',
      password: 'Password must be at least 6 characters.',
      email: 'Please enter a valid email address.',
    ),
    app: const AppLocalizationsDataApp(
      title: 'Scorizen',
    ),
    home: const AppLocalizationsDataHome(
      adminUserLabel: 'Admin User',
      phoneLabel: 'Phone',
      emailLabel: 'Email',
      uidLabel: 'UID',
      nameLabel: 'Name',
      title: 'Home',
    ),
    settings: const AppLocalizationsDataSettings(
      updateProfile: 'Update Profile',
      system: 'System',
      light: 'Light',
      dark: 'Dark',
      signOut: 'Sign Out',
      theme: 'Theme',
      language: 'Language',
      title: 'Settings',
    ),
    auth: const AppLocalizationsDataAuth(
      unknownError: 'Unknown Error',
      updateProfileTitle: 'Update Profile',
      submit: 'Submit',
      cancel: 'Cancel',
      updateUserFailNotice: 'Failed to update user',
      updateUserSuccessNotice: 'User information successfully updated.',
      updateUserSuccessNoticeTitle: 'User Updated',
      updateUser: 'Update Profile',
      signInErrorPhone: 'Sign In failed: OTP incorrect',
      signInErrorTitle: 'Sign In Error',
      emailFormField: 'Email',
      nameFormField: 'Name',
      signInButton: 'Sign In',
      otpVerificationChangeNumber: 'OTP sent to {{phone}}. Number not correct?',
      otpVerificationSent: 'OTP sent to your mobile number',
      otpVerificationSentTitle: 'OTP Sent',
      enterOTP: 'Enter OTP',
      requestOTP: 'Get OTP',
      phone: 'Enter Phone Number',
      aborted: 'Sign In Aborted',
      appleSignIn: 'Sign In With Apple',
      googleSignIn: 'Sign In With Google',
      anonymousSignIn: 'Signup Later',
      skipSignIn: 'Continue',
    ),
  ),
  Locale.fromSubtags(languageCode: 'hi'): const AppLocalizationsData(
    validator: const AppLocalizationsDataValidator(
      amount: 'कोई डॉलर प्रतीक और कोई सेंट - एक नंबर अर्थात 250 दर्ज करें',
      notEmpty: 'यह एक आवश्यक फील्ड है।',
      number: 'कृपया अपना नंबर दर्ज करें',
      name: 'कृपया अपना नाम दर्ज करें',
      password: 'पासवर्ड कम से कम 6 अंकों का होना चाहिए।',
      email: 'कृपया एक वैध ई - मेल एड्रेस डालें।',
    ),
    app: const AppLocalizationsDataApp(
      title: 'Scorizen',
    ),
    home: const AppLocalizationsDataHome(
      adminUserLabel: 'व्यवस्थापक उपयोगकर्ता',
      phoneLabel: 'फ़ोन',
      emailLabel: 'ईमेल',
      uidLabel: 'UID',
      nameLabel: 'नाम',
      title: 'घर',
    ),
    settings: const AppLocalizationsDataSettings(
      updateProfile: 'प्रोफ़ाइल अपडेट करें',
      system: 'प्रणाली',
      light: 'रोशनी',
      dark: 'अंधेरा',
      signOut: 'प्रस्थान करें',
      theme: 'विषय',
      language: 'भाषा: हिन्दी',
      title: 'समायोजन',
    ),
    auth: const AppLocalizationsDataAuth(
      unknownError: 'अज्ञात त्रुटि',
      updateProfileTitle: 'प्रोफ़ाइल अपडेट करें',
      submit: 'दर्ज करें',
      cancel: 'रद्द करें',
      updateUserFailNotice: 'उपयोगकर्ता को अपडेट करने में असफल',
      updateUserSuccessNotice: 'उपयोगकर्ता जानकारी सफलतापूर्वक अपडेट की गई।',
      updateUserSuccessNoticeTitle: 'उपयोगकर्ता अपडेट किया गया है',
      updateUser: 'प्रोफ़ाइल अपडेट करें',
      signInErrorPhone: 'साइन-इन असफल: OTP गलत है',
      signInErrorTitle: 'साइन-इन असफल\n',
      emailFormField: 'ईमेल',
      nameFormField: 'नाम',
      signInButton: 'साइन-इन करें',
      otpVerificationChangeNumber:
          'हमने OTP {{phone}} पर भेजा है| \nनंबर सही नहीं है?',
      otpVerificationSent: 'आपके मोबाइल नंबर पर OTP भेज दिया गया है',
      otpVerificationSentTitle: 'OTP भेजा गया है',
      enterOTP: 'OTP दर्ज करें',
      requestOTP: 'ओटीपी प्राप्त करें',
      phone: '\nअपना फोन नंबर दर्ज करें',
      aborted: 'साइन-इन रद्द',
      appleSignIn: 'Apple  साइन-इन करें',
      googleSignIn: 'Google साइन-इन करें',
      anonymousSignIn: 'बाद में साइन अप करें',
      skipSignIn: 'आगे बढ़ें',
    ),
  ),
};

class AppLocalizationsData {
  const AppLocalizationsData({
    required this.validator,
    required this.app,
    required this.home,
    required this.settings,
    required this.auth,
  });

  final AppLocalizationsDataValidator validator;
  final AppLocalizationsDataApp app;
  final AppLocalizationsDataHome home;
  final AppLocalizationsDataSettings settings;
  final AppLocalizationsDataAuth auth;
  factory AppLocalizationsData.fromJson(Map<String, Object?> map) =>
      AppLocalizationsData(
        validator: AppLocalizationsDataValidator.fromJson(
            map['validator']! as Map<String, Object?>),
        app: AppLocalizationsDataApp.fromJson(
            map['app']! as Map<String, Object?>),
        home: AppLocalizationsDataHome.fromJson(
            map['home']! as Map<String, Object?>),
        settings: AppLocalizationsDataSettings.fromJson(
            map['settings']! as Map<String, Object?>),
        auth: AppLocalizationsDataAuth.fromJson(
            map['auth']! as Map<String, Object?>),
      );

  AppLocalizationsData copyWith({
    AppLocalizationsDataValidator? validator,
    AppLocalizationsDataApp? app,
    AppLocalizationsDataHome? home,
    AppLocalizationsDataSettings? settings,
    AppLocalizationsDataAuth? auth,
  }) =>
      AppLocalizationsData(
        validator: validator ?? this.validator,
        app: app ?? this.app,
        home: home ?? this.home,
        settings: settings ?? this.settings,
        auth: auth ?? this.auth,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsData &&
          validator == other.validator &&
          app == other.app &&
          home == other.home &&
          settings == other.settings &&
          auth == other.auth);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      validator.hashCode ^
      app.hashCode ^
      home.hashCode ^
      settings.hashCode ^
      auth.hashCode;
}

class AppLocalizationsDataValidator {
  const AppLocalizationsDataValidator({
    required this.amount,
    required this.notEmpty,
    required this.number,
    required this.name,
    required this.password,
    required this.email,
  });

  final String amount;
  final String notEmpty;
  final String number;
  final String name;
  final String password;
  final String email;
  factory AppLocalizationsDataValidator.fromJson(Map<String, Object?> map) =>
      AppLocalizationsDataValidator(
        amount: map['amount']! as String,
        notEmpty: map['notEmpty']! as String,
        number: map['number']! as String,
        name: map['name']! as String,
        password: map['password']! as String,
        email: map['email']! as String,
      );

  AppLocalizationsDataValidator copyWith({
    String? amount,
    String? notEmpty,
    String? number,
    String? name,
    String? password,
    String? email,
  }) =>
      AppLocalizationsDataValidator(
        amount: amount ?? this.amount,
        notEmpty: notEmpty ?? this.notEmpty,
        number: number ?? this.number,
        name: name ?? this.name,
        password: password ?? this.password,
        email: email ?? this.email,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataValidator &&
          amount == other.amount &&
          notEmpty == other.notEmpty &&
          number == other.number &&
          name == other.name &&
          password == other.password &&
          email == other.email);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      amount.hashCode ^
      notEmpty.hashCode ^
      number.hashCode ^
      name.hashCode ^
      password.hashCode ^
      email.hashCode;
}

class AppLocalizationsDataApp {
  const AppLocalizationsDataApp({
    required this.title,
  });

  final String title;
  factory AppLocalizationsDataApp.fromJson(Map<String, Object?> map) =>
      AppLocalizationsDataApp(
        title: map['title']! as String,
      );

  AppLocalizationsDataApp copyWith({
    String? title,
  }) =>
      AppLocalizationsDataApp(
        title: title ?? this.title,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataApp && title == other.title);
  @override
  int get hashCode => runtimeType.hashCode ^ title.hashCode;
}

class AppLocalizationsDataHome {
  const AppLocalizationsDataHome({
    required this.adminUserLabel,
    required this.phoneLabel,
    required this.emailLabel,
    required this.uidLabel,
    required this.nameLabel,
    required this.title,
  });

  final String adminUserLabel;
  final String phoneLabel;
  final String emailLabel;
  final String uidLabel;
  final String nameLabel;
  final String title;
  factory AppLocalizationsDataHome.fromJson(Map<String, Object?> map) =>
      AppLocalizationsDataHome(
        adminUserLabel: map['adminUserLabel']! as String,
        phoneLabel: map['phoneLabel']! as String,
        emailLabel: map['emailLabel']! as String,
        uidLabel: map['uidLabel']! as String,
        nameLabel: map['nameLabel']! as String,
        title: map['title']! as String,
      );

  AppLocalizationsDataHome copyWith({
    String? adminUserLabel,
    String? phoneLabel,
    String? emailLabel,
    String? uidLabel,
    String? nameLabel,
    String? title,
  }) =>
      AppLocalizationsDataHome(
        adminUserLabel: adminUserLabel ?? this.adminUserLabel,
        phoneLabel: phoneLabel ?? this.phoneLabel,
        emailLabel: emailLabel ?? this.emailLabel,
        uidLabel: uidLabel ?? this.uidLabel,
        nameLabel: nameLabel ?? this.nameLabel,
        title: title ?? this.title,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataHome &&
          adminUserLabel == other.adminUserLabel &&
          phoneLabel == other.phoneLabel &&
          emailLabel == other.emailLabel &&
          uidLabel == other.uidLabel &&
          nameLabel == other.nameLabel &&
          title == other.title);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      adminUserLabel.hashCode ^
      phoneLabel.hashCode ^
      emailLabel.hashCode ^
      uidLabel.hashCode ^
      nameLabel.hashCode ^
      title.hashCode;
}

class AppLocalizationsDataSettings {
  const AppLocalizationsDataSettings({
    required this.updateProfile,
    required this.system,
    required this.light,
    required this.dark,
    required this.signOut,
    required this.theme,
    required this.language,
    required this.title,
  });

  final String updateProfile;
  final String system;
  final String light;
  final String dark;
  final String signOut;
  final String theme;
  final String language;
  final String title;
  factory AppLocalizationsDataSettings.fromJson(Map<String, Object?> map) =>
      AppLocalizationsDataSettings(
        updateProfile: map['updateProfile']! as String,
        system: map['system']! as String,
        light: map['light']! as String,
        dark: map['dark']! as String,
        signOut: map['signOut']! as String,
        theme: map['theme']! as String,
        language: map['language']! as String,
        title: map['title']! as String,
      );

  AppLocalizationsDataSettings copyWith({
    String? updateProfile,
    String? system,
    String? light,
    String? dark,
    String? signOut,
    String? theme,
    String? language,
    String? title,
  }) =>
      AppLocalizationsDataSettings(
        updateProfile: updateProfile ?? this.updateProfile,
        system: system ?? this.system,
        light: light ?? this.light,
        dark: dark ?? this.dark,
        signOut: signOut ?? this.signOut,
        theme: theme ?? this.theme,
        language: language ?? this.language,
        title: title ?? this.title,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataSettings &&
          updateProfile == other.updateProfile &&
          system == other.system &&
          light == other.light &&
          dark == other.dark &&
          signOut == other.signOut &&
          theme == other.theme &&
          language == other.language &&
          title == other.title);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      updateProfile.hashCode ^
      system.hashCode ^
      light.hashCode ^
      dark.hashCode ^
      signOut.hashCode ^
      theme.hashCode ^
      language.hashCode ^
      title.hashCode;
}

class AppLocalizationsDataAuth {
  const AppLocalizationsDataAuth({
    required this.unknownError,
    required this.updateProfileTitle,
    required this.submit,
    required this.cancel,
    required this.updateUserFailNotice,
    required this.updateUserSuccessNotice,
    required this.updateUserSuccessNoticeTitle,
    required this.updateUser,
    required this.signInErrorPhone,
    required this.signInErrorTitle,
    required this.emailFormField,
    required this.nameFormField,
    required this.signInButton,
    required String otpVerificationChangeNumber,
    required this.otpVerificationSent,
    required this.otpVerificationSentTitle,
    required this.enterOTP,
    required this.requestOTP,
    required this.phone,
    required this.aborted,
    required this.appleSignIn,
    required this.googleSignIn,
    required this.anonymousSignIn,
    required this.skipSignIn,
  }) : _otpVerificationChangeNumber = otpVerificationChangeNumber;

  final String unknownError;
  final String updateProfileTitle;
  final String submit;
  final String cancel;
  final String updateUserFailNotice;
  final String updateUserSuccessNotice;
  final String updateUserSuccessNoticeTitle;
  final String updateUser;
  final String signInErrorPhone;
  final String signInErrorTitle;
  final String emailFormField;
  final String nameFormField;
  final String signInButton;
  final String _otpVerificationChangeNumber;
  final String otpVerificationSent;
  final String otpVerificationSentTitle;
  final String enterOTP;
  final String requestOTP;
  final String phone;
  final String aborted;
  final String appleSignIn;
  final String googleSignIn;
  final String anonymousSignIn;
  final String skipSignIn;

  String otpVerificationChangeNumber({
    required String phone,
    String? locale,
  }) {
    return _otpVerificationChangeNumber.insertTemplateValues(
      {
        'phone': phone,
      },
      locale: locale,
    );
  }

  factory AppLocalizationsDataAuth.fromJson(Map<String, Object?> map) =>
      AppLocalizationsDataAuth(
        unknownError: map['unknownError']! as String,
        updateProfileTitle: map['updateProfileTitle']! as String,
        submit: map['submit']! as String,
        cancel: map['cancel']! as String,
        updateUserFailNotice: map['updateUserFailNotice']! as String,
        updateUserSuccessNotice: map['updateUserSuccessNotice']! as String,
        updateUserSuccessNoticeTitle:
            map['updateUserSuccessNoticeTitle']! as String,
        updateUser: map['updateUser']! as String,
        signInErrorPhone: map['signInErrorPhone']! as String,
        signInErrorTitle: map['signInErrorTitle']! as String,
        emailFormField: map['emailFormField']! as String,
        nameFormField: map['nameFormField']! as String,
        signInButton: map['signInButton']! as String,
        otpVerificationChangeNumber:
            map['otpVerificationChangeNumber']! as String,
        otpVerificationSent: map['otpVerificationSent']! as String,
        otpVerificationSentTitle: map['otpVerificationSentTitle']! as String,
        enterOTP: map['enterOTP']! as String,
        requestOTP: map['requestOTP']! as String,
        phone: map['phone']! as String,
        aborted: map['aborted']! as String,
        appleSignIn: map['appleSignIn']! as String,
        googleSignIn: map['googleSignIn']! as String,
        anonymousSignIn: map['anonymousSignIn']! as String,
        skipSignIn: map['skipSignIn']! as String,
      );

  AppLocalizationsDataAuth copyWith({
    String? unknownError,
    String? updateProfileTitle,
    String? submit,
    String? cancel,
    String? updateUserFailNotice,
    String? updateUserSuccessNotice,
    String? updateUserSuccessNoticeTitle,
    String? updateUser,
    String? signInErrorPhone,
    String? signInErrorTitle,
    String? emailFormField,
    String? nameFormField,
    String? signInButton,
    String? otpVerificationChangeNumber,
    String? otpVerificationSent,
    String? otpVerificationSentTitle,
    String? enterOTP,
    String? requestOTP,
    String? phone,
    String? aborted,
    String? appleSignIn,
    String? googleSignIn,
    String? anonymousSignIn,
    String? skipSignIn,
  }) =>
      AppLocalizationsDataAuth(
        unknownError: unknownError ?? this.unknownError,
        updateProfileTitle: updateProfileTitle ?? this.updateProfileTitle,
        submit: submit ?? this.submit,
        cancel: cancel ?? this.cancel,
        updateUserFailNotice: updateUserFailNotice ?? this.updateUserFailNotice,
        updateUserSuccessNotice:
            updateUserSuccessNotice ?? this.updateUserSuccessNotice,
        updateUserSuccessNoticeTitle:
            updateUserSuccessNoticeTitle ?? this.updateUserSuccessNoticeTitle,
        updateUser: updateUser ?? this.updateUser,
        signInErrorPhone: signInErrorPhone ?? this.signInErrorPhone,
        signInErrorTitle: signInErrorTitle ?? this.signInErrorTitle,
        emailFormField: emailFormField ?? this.emailFormField,
        nameFormField: nameFormField ?? this.nameFormField,
        signInButton: signInButton ?? this.signInButton,
        otpVerificationChangeNumber:
            otpVerificationChangeNumber ?? _otpVerificationChangeNumber,
        otpVerificationSent: otpVerificationSent ?? this.otpVerificationSent,
        otpVerificationSentTitle:
            otpVerificationSentTitle ?? this.otpVerificationSentTitle,
        enterOTP: enterOTP ?? this.enterOTP,
        requestOTP: requestOTP ?? this.requestOTP,
        phone: phone ?? this.phone,
        aborted: aborted ?? this.aborted,
        appleSignIn: appleSignIn ?? this.appleSignIn,
        googleSignIn: googleSignIn ?? this.googleSignIn,
        anonymousSignIn: anonymousSignIn ?? this.anonymousSignIn,
        skipSignIn: skipSignIn ?? this.skipSignIn,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataAuth &&
          unknownError == other.unknownError &&
          updateProfileTitle == other.updateProfileTitle &&
          submit == other.submit &&
          cancel == other.cancel &&
          updateUserFailNotice == other.updateUserFailNotice &&
          updateUserSuccessNotice == other.updateUserSuccessNotice &&
          updateUserSuccessNoticeTitle == other.updateUserSuccessNoticeTitle &&
          updateUser == other.updateUser &&
          signInErrorPhone == other.signInErrorPhone &&
          signInErrorTitle == other.signInErrorTitle &&
          emailFormField == other.emailFormField &&
          nameFormField == other.nameFormField &&
          signInButton == other.signInButton &&
          _otpVerificationChangeNumber == other._otpVerificationChangeNumber &&
          otpVerificationSent == other.otpVerificationSent &&
          otpVerificationSentTitle == other.otpVerificationSentTitle &&
          enterOTP == other.enterOTP &&
          requestOTP == other.requestOTP &&
          phone == other.phone &&
          aborted == other.aborted &&
          appleSignIn == other.appleSignIn &&
          googleSignIn == other.googleSignIn &&
          anonymousSignIn == other.anonymousSignIn &&
          skipSignIn == other.skipSignIn);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      unknownError.hashCode ^
      updateProfileTitle.hashCode ^
      submit.hashCode ^
      cancel.hashCode ^
      updateUserFailNotice.hashCode ^
      updateUserSuccessNotice.hashCode ^
      updateUserSuccessNoticeTitle.hashCode ^
      updateUser.hashCode ^
      signInErrorPhone.hashCode ^
      signInErrorTitle.hashCode ^
      emailFormField.hashCode ^
      nameFormField.hashCode ^
      signInButton.hashCode ^
      _otpVerificationChangeNumber.hashCode ^
      otpVerificationSent.hashCode ^
      otpVerificationSentTitle.hashCode ^
      enterOTP.hashCode ^
      requestOTP.hashCode ^
      phone.hashCode ^
      aborted.hashCode ^
      appleSignIn.hashCode ^
      googleSignIn.hashCode ^
      anonymousSignIn.hashCode ^
      skipSignIn.hashCode;
}

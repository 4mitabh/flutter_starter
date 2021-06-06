// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localizations.dart';

// **************************************************************************
// SheetLocalizationGenerator
// **************************************************************************

final localizedLabels = <Locale, AppLocalizationsData>{
  Locale.fromSubtags(languageCode: 'en'): const AppLocalizationsData(
    questrack: const AppLocalizationsDataQuestrack(
      error: const AppLocalizationsDataQuestrackError(
        title: 'Error',
      ),
      alert: const AppLocalizationsDataQuestrackAlert(
        save: 'Save',
        suggest: const AppLocalizationsDataQuestrackAlertSuggest(
          pin: 'For urban areas of {{dist}}, you can use {{pinSuggest}}',
        ),
        error: const AppLocalizationsDataQuestrackAlertError(
          invalidPin: 'This is not a valid range of pincodes for {{dist}}',
          noCost: 'Select at least one of Free/Paid',
          noDose: 'Select at least one of the doses',
          noVaccine: 'Select at least one of the vaccines',
        ),
        delete: const AppLocalizationsDataQuestrackAlertDelete(
          confirmation:
              const AppLocalizationsDataQuestrackAlertDeleteConfirmation(
            no: 'No',
            yes: 'Yes, Delete',
            title: 'Are you sure, you want to delete this alert?',
          ),
        ),
        pin: const AppLocalizationsDataQuestrackAlertPin(
          help:
              'Enter full or partial pincode prefix. Leave empty to get alerts from entire district.',
          title: 'Only Pin Codes Starting With',
        ),
        dose: const AppLocalizationsDataQuestrackAlertDose(
          dose2: 'Second Dose',
          dose1: 'First Dose',
          title: 'Dose',
        ),
        cost: const AppLocalizationsDataQuestrackAlertCost(
          paid: 'Paid',
          free: 'Free',
          title: 'Cost',
        ),
        vaccine: const AppLocalizationsDataQuestrackAlertVaccine(
          sputnik: 'Sputnik',
          covishield: 'Covishield',
          covaxin: 'Covaxin',
          title: 'Vaccine',
        ),
      ),
      alertsList: const AppLocalizationsDataQuestrackAlertsList(
        add: 'Add a new alert  💉 ',
        delete: 'Delete',
        edit: 'Edit',
        title: 'Your Alerts',
      ),
      share: const AppLocalizationsDataQuestrackShare(
        button: 'Share This',
        title: 'Booked Vaccination Slot!',
        body:
            'I used Questrack app to find my vaccination slot https://questrack.app/v/\nSimply install the app and select your city. You will get notified the moment new slots appear.',
      ),
      review: const AppLocalizationsDataQuestrackReview(
        dialog: const AppLocalizationsDataQuestrackReviewDialog(
          no: 'No, I have feedback',
          yes: 'Yes, I want to rate it ⭐⭐⭐⭐⭐',
          body: 'Did you find this app useful?',
        ),
        snack: const AppLocalizationsDataQuestrackReviewSnack(
          body: 'If this app helped you, please leave a 5 star rating',
          title: 'Thank you',
        ),
      ),
      menu: const AppLocalizationsDataQuestrackMenu(
        about: 'About',
        editCities: 'Edit Cities',
        review: 'Write a review',
        switchLocale: 'Switch to Hindi',
        share: 'Share',
        signout: 'Sign Out',
      ),
      questpicker: const AppLocalizationsDataQuestrackQuestpicker(
        save: 'Save',
        citylist: const AppLocalizationsDataQuestrackQuestpickerCitylist(
          title: 'Pick your cities to receive alerts:',
          missing:
              const AppLocalizationsDataQuestrackQuestpickerCitylistMissing(
            button: 'Your city not in the list ?',
            dialog:
                const AppLocalizationsDataQuestrackQuestpickerCitylistMissingDialog(
              button: 'Write to us',
              title:
                  'Let us know if you would like a city to be added to this list. We will add it in the next update.',
            ),
          ),
        ),
        errorTooMany:
            const AppLocalizationsDataQuestrackQuestpickerErrorTooMany(
          body: 'Please limit your selections to {{num}}',
          title: 'Cannot add more than {{num}}',
        ),
      ),
      feed: const AppLocalizationsDataQuestrackFeed(
        opencowin: 'Open CoWin Website',
        title: 'Live Availability',
        empty: const AppLocalizationsDataQuestrackFeedEmpty(
          body:
              'Very soon slots will open in your city and you will start receiving alerts on your phone. You will be able to view the real time availability of the slots on the screen.',
          title: 'Thank you for downloading the app !',
        ),
      ),
    ),
    language: const AppLocalizationsDataLanguage(
      only: 'only',
      and: 'and',
    ),
    upgrade: const AppLocalizationsDataUpgrade(
      button: 'Update',
      body:
          'We have made the app better and added new features. It is recommended that you update to the latest build. This will take less than a minuite....',
      title: 'Update Required',
      network: const AppLocalizationsDataUpgradeNetwork(
        waiting: 'Waiting for a network connection...',
      ),
      optional: const AppLocalizationsDataUpgradeOptional(
        body:
            'We have made the app better and added new features. It is recommended that you update to the latest build',
        title: 'A New Update Is Available',
      ),
    ),
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
    questrack: const AppLocalizationsDataQuestrack(
      error: const AppLocalizationsDataQuestrackError(
        title: 'त्रुटि',
      ),
      alert: const AppLocalizationsDataQuestrackAlert(
        save: 'अपडेट करें',
        suggest: const AppLocalizationsDataQuestrackAlertSuggest(
          pin:
              '{{dist}} के शहरी क्षेत्रों के लिए आप {{pinSuggest}} का उपयोग कर सकते हैं',
        ),
        error: const AppLocalizationsDataQuestrackAlertError(
          invalidPin: 'यह {{dist}} के लिए एक मान्य पिनकोड श्रेणी नहीं है',
          noCost: 'कम से कम नि: शुल्क / सशुल्क से एक का चयन करें',
          noDose: 'कम से कम एक खुराक का चयन करें',
          noVaccine: 'कम से कम एक टीके का चयन करें',
        ),
        delete: const AppLocalizationsDataQuestrackAlertDelete(
          confirmation:
              const AppLocalizationsDataQuestrackAlertDeleteConfirmation(
            no: 'नहीं',
            yes: 'हाँ, हटाएं',
            title: 'क्या आप निश्चित हैं, आप इस अलर्ट को मिटाना चाहते हैं?',
          ),
        ),
        pin: const AppLocalizationsDataQuestrackAlertPin(
          help:
              'पूर्ण या आंशिक पिनकोड। पूरे जिले से अलर्ट प्राप्त करने के लिए खाली छोड़ दें।',
          title: 'केवल वे पिन कोड, जिनकी आरंभ में हैं',
        ),
        dose: const AppLocalizationsDataQuestrackAlertDose(
          dose2: 'दूसरी खुराक',
          dose1: 'पहली खुराक',
          title: 'खुराक',
        ),
        cost: const AppLocalizationsDataQuestrackAlertCost(
          paid: 'सशुल्क',
          free: 'नि: शुल्क',
          title: 'शुल्क',
        ),
        vaccine: const AppLocalizationsDataQuestrackAlertVaccine(
          sputnik: 'स्पूतनिक वी',
          covishield: 'कोविशील्ड',
          covaxin: 'कोवैक्सिन',
          title: 'टीका',
        ),
      ),
      alertsList: const AppLocalizationsDataQuestrackAlertsList(
        add: 'नया अलर्ट जोड़ें 💉 ',
        delete: 'रद्द करें',
        edit: 'संपादित करें',
        title: 'आपके अलर्ट',
      ),
      share: const AppLocalizationsDataQuestrackShare(
        button: 'शेयर करें',
        title: 'मैंने अपना टीकाकरण स्लॉट बुक कर लिया है!',
        body:
            'मैंने अपना टीकाकरण स्लॉट खोजने के लिए Questrack ऐप का इस्तेमाल किया https://questrack.app/v/\nबस ऐप इंस्टॉल करें और अपने शहर का चयन करें। जैसे ही नए स्लॉट दिखाई देंगे आपको सूचना मिल जाएगी।',
      ),
      review: const AppLocalizationsDataQuestrackReview(
        dialog: const AppLocalizationsDataQuestrackReviewDialog(
          no: 'नहीं, मेरे पास सुझाव हैं',
          yes: 'हां, मैं इसे ⭐⭐⭐⭐⭐ रेट करना चाहता हूं',
          body: 'क्या इस ऐप ने आपकी मदद की?',
        ),
        snack: const AppLocalizationsDataQuestrackReviewSnack(
          body: 'अगर इस ऐप ने आपकी मदद की है, तो कृपया 5 स्टार रेटिंग दें',
          title: 'धन्यवाद',
        ),
      ),
      menu: const AppLocalizationsDataQuestrackMenu(
        about: 'ऐप के बारे में',
        editCities: 'शहर चुनें',
        review: 'रेटिंग दें',
        switchLocale: 'अंग्रेजी में बदलें',
        share: 'शेयर करें',
        signout: 'लॉग आउट',
      ),
      questpicker: const AppLocalizationsDataQuestrackQuestpicker(
        save: 'आगे बढ़ें',
        citylist: const AppLocalizationsDataQuestrackQuestpickerCitylist(
          title: 'अलर्ट प्राप्त करने के लिए अपने शहर चुनें:',
          missing:
              const AppLocalizationsDataQuestrackQuestpickerCitylistMissing(
            button: 'आपका शहर सूची में नहीं है?',
            dialog:
                const AppLocalizationsDataQuestrackQuestpickerCitylistMissingDialog(
              button: 'अपना अनुरोध भेजें',
              title:
                  'अगर आप किसी शहर को इस सूची में शामिल करना चाहते हैं तो हमें बताएं. हम इसे अगले अपडेट में जोड़ देंगे.',
            ),
          ),
        ),
        errorTooMany:
            const AppLocalizationsDataQuestrackQuestpickerErrorTooMany(
          body: 'कृपया अपने चयन को {{num}} तक सीमित करें',
          title: '{{num}} से अधिक शहर न चुनें',
        ),
      ),
      feed: const AppLocalizationsDataQuestrackFeed(
        opencowin: 'CoWin वेबसाइट खोलें',
        title: 'लाइव उपलब्धता',
        empty: const AppLocalizationsDataQuestrackFeedEmpty(
          body:
              'बहुत जल्द आपके शहर में स्लॉट खुलेंगे और आपको अपने फोन पर अलर्ट मिलने लगेंगे। आप स्क्रीन पर स्लॉट्स की रीयल टाइम उपलब्धता देख पाएंगे।',
          title: 'ऐप डाउनलोड करने के लिए धन्यवाद!',
        ),
      ),
    ),
    language: const AppLocalizationsDataLanguage(
      only: 'केवल',
      and: 'तथा',
    ),
    upgrade: const AppLocalizationsDataUpgrade(
      button: 'अपडेट करें',
      body: 'इसमें एक मिनट से भी कम समय लगेगा....',
      title: 'अपडेट आवश्यक है',
      network: const AppLocalizationsDataUpgradeNetwork(
        waiting: 'नेटवर्क कनेक्शन उपलब्ध नहीं है',
      ),
      optional: const AppLocalizationsDataUpgradeOptional(
        body: 'यह सुझाव दिया जाता है कि आप नवीनतम बिल्ड में अपडेट करें',
        title: 'एक नया संस्करण उपलब्ध है',
      ),
    ),
    validator: const AppLocalizationsDataValidator(
      amount:
          'कृपया एक संख्या I.E 250 दर्ज करें - कोई डॉलर का प्रतीक और कोई सेंट नहीं',
      notEmpty: 'यह एक आवश्यक फील्ड है।',
      number: 'कृपया अपना नंबर दर्ज करें',
      name: 'कृपया अपना नाम दर्ज करें',
      password: 'पासवर्ड कम से कम 6 अंकों का होना चाहिए।',
      email: 'कृपया एक वैध ई - मेल एड्रेस डालें।',
    ),
    app: const AppLocalizationsDataApp(
      title: 'स्कॉरिज़ेन',
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
      requestOTP: 'OTP प्राप्त करें',
      phone: '\nअपना फोन नंबर दर्ज करें',
      aborted: 'साइन-इन रद्द',
      appleSignIn: 'Apple  साइन-इन करें',
      googleSignIn: 'Google साइन-इन करें',
      anonymousSignIn: 'Signup Later',
      skipSignIn: 'आगे बढ़ें',
    ),
  ),
};

class AppLocalizationsData {
  const AppLocalizationsData({
    required this.questrack,
    required this.language,
    required this.upgrade,
    required this.validator,
    required this.app,
    required this.home,
    required this.settings,
    required this.auth,
  });

  final AppLocalizationsDataQuestrack questrack;
  final AppLocalizationsDataLanguage language;
  final AppLocalizationsDataUpgrade upgrade;
  final AppLocalizationsDataValidator validator;
  final AppLocalizationsDataApp app;
  final AppLocalizationsDataHome home;
  final AppLocalizationsDataSettings settings;
  final AppLocalizationsDataAuth auth;
  factory AppLocalizationsData.fromJson(Map<String, Object?> map) =>
      AppLocalizationsData(
        questrack: AppLocalizationsDataQuestrack.fromJson(
            map['questrack']! as Map<String, Object?>),
        language: AppLocalizationsDataLanguage.fromJson(
            map['language']! as Map<String, Object?>),
        upgrade: AppLocalizationsDataUpgrade.fromJson(
            map['upgrade']! as Map<String, Object?>),
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
    AppLocalizationsDataQuestrack? questrack,
    AppLocalizationsDataLanguage? language,
    AppLocalizationsDataUpgrade? upgrade,
    AppLocalizationsDataValidator? validator,
    AppLocalizationsDataApp? app,
    AppLocalizationsDataHome? home,
    AppLocalizationsDataSettings? settings,
    AppLocalizationsDataAuth? auth,
  }) =>
      AppLocalizationsData(
        questrack: questrack ?? this.questrack,
        language: language ?? this.language,
        upgrade: upgrade ?? this.upgrade,
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
          questrack == other.questrack &&
          language == other.language &&
          upgrade == other.upgrade &&
          validator == other.validator &&
          app == other.app &&
          home == other.home &&
          settings == other.settings &&
          auth == other.auth);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      questrack.hashCode ^
      language.hashCode ^
      upgrade.hashCode ^
      validator.hashCode ^
      app.hashCode ^
      home.hashCode ^
      settings.hashCode ^
      auth.hashCode;
}

class AppLocalizationsDataQuestrack {
  const AppLocalizationsDataQuestrack({
    required this.error,
    required this.alert,
    required this.alertsList,
    required this.share,
    required this.review,
    required this.menu,
    required this.questpicker,
    required this.feed,
  });

  final AppLocalizationsDataQuestrackError error;
  final AppLocalizationsDataQuestrackAlert alert;
  final AppLocalizationsDataQuestrackAlertsList alertsList;
  final AppLocalizationsDataQuestrackShare share;
  final AppLocalizationsDataQuestrackReview review;
  final AppLocalizationsDataQuestrackMenu menu;
  final AppLocalizationsDataQuestrackQuestpicker questpicker;
  final AppLocalizationsDataQuestrackFeed feed;
  factory AppLocalizationsDataQuestrack.fromJson(Map<String, Object?> map) =>
      AppLocalizationsDataQuestrack(
        error: AppLocalizationsDataQuestrackError.fromJson(
            map['error']! as Map<String, Object?>),
        alert: AppLocalizationsDataQuestrackAlert.fromJson(
            map['alert']! as Map<String, Object?>),
        alertsList: AppLocalizationsDataQuestrackAlertsList.fromJson(
            map['alertsList']! as Map<String, Object?>),
        share: AppLocalizationsDataQuestrackShare.fromJson(
            map['share']! as Map<String, Object?>),
        review: AppLocalizationsDataQuestrackReview.fromJson(
            map['review']! as Map<String, Object?>),
        menu: AppLocalizationsDataQuestrackMenu.fromJson(
            map['menu']! as Map<String, Object?>),
        questpicker: AppLocalizationsDataQuestrackQuestpicker.fromJson(
            map['questpicker']! as Map<String, Object?>),
        feed: AppLocalizationsDataQuestrackFeed.fromJson(
            map['feed']! as Map<String, Object?>),
      );

  AppLocalizationsDataQuestrack copyWith({
    AppLocalizationsDataQuestrackError? error,
    AppLocalizationsDataQuestrackAlert? alert,
    AppLocalizationsDataQuestrackAlertsList? alertsList,
    AppLocalizationsDataQuestrackShare? share,
    AppLocalizationsDataQuestrackReview? review,
    AppLocalizationsDataQuestrackMenu? menu,
    AppLocalizationsDataQuestrackQuestpicker? questpicker,
    AppLocalizationsDataQuestrackFeed? feed,
  }) =>
      AppLocalizationsDataQuestrack(
        error: error ?? this.error,
        alert: alert ?? this.alert,
        alertsList: alertsList ?? this.alertsList,
        share: share ?? this.share,
        review: review ?? this.review,
        menu: menu ?? this.menu,
        questpicker: questpicker ?? this.questpicker,
        feed: feed ?? this.feed,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrack &&
          error == other.error &&
          alert == other.alert &&
          alertsList == other.alertsList &&
          share == other.share &&
          review == other.review &&
          menu == other.menu &&
          questpicker == other.questpicker &&
          feed == other.feed);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      error.hashCode ^
      alert.hashCode ^
      alertsList.hashCode ^
      share.hashCode ^
      review.hashCode ^
      menu.hashCode ^
      questpicker.hashCode ^
      feed.hashCode;
}

class AppLocalizationsDataQuestrackError {
  const AppLocalizationsDataQuestrackError({
    required this.title,
  });

  final String title;
  factory AppLocalizationsDataQuestrackError.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackError(
        title: map['title']! as String,
      );

  AppLocalizationsDataQuestrackError copyWith({
    String? title,
  }) =>
      AppLocalizationsDataQuestrackError(
        title: title ?? this.title,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackError && title == other.title);
  @override
  int get hashCode => runtimeType.hashCode ^ title.hashCode;
}

class AppLocalizationsDataQuestrackAlert {
  const AppLocalizationsDataQuestrackAlert({
    required this.save,
    required this.suggest,
    required this.error,
    required this.delete,
    required this.pin,
    required this.dose,
    required this.cost,
    required this.vaccine,
  });

  final String save;
  final AppLocalizationsDataQuestrackAlertSuggest suggest;
  final AppLocalizationsDataQuestrackAlertError error;
  final AppLocalizationsDataQuestrackAlertDelete delete;
  final AppLocalizationsDataQuestrackAlertPin pin;
  final AppLocalizationsDataQuestrackAlertDose dose;
  final AppLocalizationsDataQuestrackAlertCost cost;
  final AppLocalizationsDataQuestrackAlertVaccine vaccine;
  factory AppLocalizationsDataQuestrackAlert.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackAlert(
        save: map['save']! as String,
        suggest: AppLocalizationsDataQuestrackAlertSuggest.fromJson(
            map['suggest']! as Map<String, Object?>),
        error: AppLocalizationsDataQuestrackAlertError.fromJson(
            map['error']! as Map<String, Object?>),
        delete: AppLocalizationsDataQuestrackAlertDelete.fromJson(
            map['delete']! as Map<String, Object?>),
        pin: AppLocalizationsDataQuestrackAlertPin.fromJson(
            map['pin']! as Map<String, Object?>),
        dose: AppLocalizationsDataQuestrackAlertDose.fromJson(
            map['dose']! as Map<String, Object?>),
        cost: AppLocalizationsDataQuestrackAlertCost.fromJson(
            map['cost']! as Map<String, Object?>),
        vaccine: AppLocalizationsDataQuestrackAlertVaccine.fromJson(
            map['vaccine']! as Map<String, Object?>),
      );

  AppLocalizationsDataQuestrackAlert copyWith({
    String? save,
    AppLocalizationsDataQuestrackAlertSuggest? suggest,
    AppLocalizationsDataQuestrackAlertError? error,
    AppLocalizationsDataQuestrackAlertDelete? delete,
    AppLocalizationsDataQuestrackAlertPin? pin,
    AppLocalizationsDataQuestrackAlertDose? dose,
    AppLocalizationsDataQuestrackAlertCost? cost,
    AppLocalizationsDataQuestrackAlertVaccine? vaccine,
  }) =>
      AppLocalizationsDataQuestrackAlert(
        save: save ?? this.save,
        suggest: suggest ?? this.suggest,
        error: error ?? this.error,
        delete: delete ?? this.delete,
        pin: pin ?? this.pin,
        dose: dose ?? this.dose,
        cost: cost ?? this.cost,
        vaccine: vaccine ?? this.vaccine,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackAlert &&
          save == other.save &&
          suggest == other.suggest &&
          error == other.error &&
          delete == other.delete &&
          pin == other.pin &&
          dose == other.dose &&
          cost == other.cost &&
          vaccine == other.vaccine);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      save.hashCode ^
      suggest.hashCode ^
      error.hashCode ^
      delete.hashCode ^
      pin.hashCode ^
      dose.hashCode ^
      cost.hashCode ^
      vaccine.hashCode;
}

class AppLocalizationsDataQuestrackAlertSuggest {
  const AppLocalizationsDataQuestrackAlertSuggest({
    required String pin,
  }) : _pin = pin;

  final String _pin;

  String pin({
    required String dist,
    required String pinSuggest,
    String? locale,
  }) {
    return _pin.insertTemplateValues(
      {
        'dist': dist,
        'pinSuggest': pinSuggest,
      },
      locale: locale,
    );
  }

  factory AppLocalizationsDataQuestrackAlertSuggest.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackAlertSuggest(
        pin: map['pin']! as String,
      );

  AppLocalizationsDataQuestrackAlertSuggest copyWith({
    String? pin,
  }) =>
      AppLocalizationsDataQuestrackAlertSuggest(
        pin: pin ?? _pin,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackAlertSuggest &&
          _pin == other._pin);
  @override
  int get hashCode => runtimeType.hashCode ^ _pin.hashCode;
}

class AppLocalizationsDataQuestrackAlertError {
  const AppLocalizationsDataQuestrackAlertError({
    required String invalidPin,
    required this.noCost,
    required this.noDose,
    required this.noVaccine,
  }) : _invalidPin = invalidPin;

  final String _invalidPin;
  final String noCost;
  final String noDose;
  final String noVaccine;

  String invalidPin({
    required String dist,
    String? locale,
  }) {
    return _invalidPin.insertTemplateValues(
      {
        'dist': dist,
      },
      locale: locale,
    );
  }

  factory AppLocalizationsDataQuestrackAlertError.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackAlertError(
        invalidPin: map['invalidPin']! as String,
        noCost: map['noCost']! as String,
        noDose: map['noDose']! as String,
        noVaccine: map['noVaccine']! as String,
      );

  AppLocalizationsDataQuestrackAlertError copyWith({
    String? invalidPin,
    String? noCost,
    String? noDose,
    String? noVaccine,
  }) =>
      AppLocalizationsDataQuestrackAlertError(
        invalidPin: invalidPin ?? _invalidPin,
        noCost: noCost ?? this.noCost,
        noDose: noDose ?? this.noDose,
        noVaccine: noVaccine ?? this.noVaccine,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackAlertError &&
          _invalidPin == other._invalidPin &&
          noCost == other.noCost &&
          noDose == other.noDose &&
          noVaccine == other.noVaccine);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      _invalidPin.hashCode ^
      noCost.hashCode ^
      noDose.hashCode ^
      noVaccine.hashCode;
}

class AppLocalizationsDataQuestrackAlertDelete {
  const AppLocalizationsDataQuestrackAlertDelete({
    required this.confirmation,
  });

  final AppLocalizationsDataQuestrackAlertDeleteConfirmation confirmation;
  factory AppLocalizationsDataQuestrackAlertDelete.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackAlertDelete(
        confirmation:
            AppLocalizationsDataQuestrackAlertDeleteConfirmation.fromJson(
                map['confirmation']! as Map<String, Object?>),
      );

  AppLocalizationsDataQuestrackAlertDelete copyWith({
    AppLocalizationsDataQuestrackAlertDeleteConfirmation? confirmation,
  }) =>
      AppLocalizationsDataQuestrackAlertDelete(
        confirmation: confirmation ?? this.confirmation,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackAlertDelete &&
          confirmation == other.confirmation);
  @override
  int get hashCode => runtimeType.hashCode ^ confirmation.hashCode;
}

class AppLocalizationsDataQuestrackAlertDeleteConfirmation {
  const AppLocalizationsDataQuestrackAlertDeleteConfirmation({
    required this.no,
    required this.yes,
    required this.title,
  });

  final String no;
  final String yes;
  final String title;
  factory AppLocalizationsDataQuestrackAlertDeleteConfirmation.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackAlertDeleteConfirmation(
        no: map['no']! as String,
        yes: map['yes']! as String,
        title: map['title']! as String,
      );

  AppLocalizationsDataQuestrackAlertDeleteConfirmation copyWith({
    String? no,
    String? yes,
    String? title,
  }) =>
      AppLocalizationsDataQuestrackAlertDeleteConfirmation(
        no: no ?? this.no,
        yes: yes ?? this.yes,
        title: title ?? this.title,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackAlertDeleteConfirmation &&
          no == other.no &&
          yes == other.yes &&
          title == other.title);
  @override
  int get hashCode =>
      runtimeType.hashCode ^ no.hashCode ^ yes.hashCode ^ title.hashCode;
}

class AppLocalizationsDataQuestrackAlertPin {
  const AppLocalizationsDataQuestrackAlertPin({
    required this.help,
    required this.title,
  });

  final String help;
  final String title;
  factory AppLocalizationsDataQuestrackAlertPin.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackAlertPin(
        help: map['help']! as String,
        title: map['title']! as String,
      );

  AppLocalizationsDataQuestrackAlertPin copyWith({
    String? help,
    String? title,
  }) =>
      AppLocalizationsDataQuestrackAlertPin(
        help: help ?? this.help,
        title: title ?? this.title,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackAlertPin &&
          help == other.help &&
          title == other.title);
  @override
  int get hashCode => runtimeType.hashCode ^ help.hashCode ^ title.hashCode;
}

class AppLocalizationsDataQuestrackAlertDose {
  const AppLocalizationsDataQuestrackAlertDose({
    required this.dose2,
    required this.dose1,
    required this.title,
  });

  final String dose2;
  final String dose1;
  final String title;
  factory AppLocalizationsDataQuestrackAlertDose.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackAlertDose(
        dose2: map['dose2']! as String,
        dose1: map['dose1']! as String,
        title: map['title']! as String,
      );

  AppLocalizationsDataQuestrackAlertDose copyWith({
    String? dose2,
    String? dose1,
    String? title,
  }) =>
      AppLocalizationsDataQuestrackAlertDose(
        dose2: dose2 ?? this.dose2,
        dose1: dose1 ?? this.dose1,
        title: title ?? this.title,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackAlertDose &&
          dose2 == other.dose2 &&
          dose1 == other.dose1 &&
          title == other.title);
  @override
  int get hashCode =>
      runtimeType.hashCode ^ dose2.hashCode ^ dose1.hashCode ^ title.hashCode;
}

class AppLocalizationsDataQuestrackAlertCost {
  const AppLocalizationsDataQuestrackAlertCost({
    required this.paid,
    required this.free,
    required this.title,
  });

  final String paid;
  final String free;
  final String title;
  factory AppLocalizationsDataQuestrackAlertCost.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackAlertCost(
        paid: map['paid']! as String,
        free: map['free']! as String,
        title: map['title']! as String,
      );

  AppLocalizationsDataQuestrackAlertCost copyWith({
    String? paid,
    String? free,
    String? title,
  }) =>
      AppLocalizationsDataQuestrackAlertCost(
        paid: paid ?? this.paid,
        free: free ?? this.free,
        title: title ?? this.title,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackAlertCost &&
          paid == other.paid &&
          free == other.free &&
          title == other.title);
  @override
  int get hashCode =>
      runtimeType.hashCode ^ paid.hashCode ^ free.hashCode ^ title.hashCode;
}

class AppLocalizationsDataQuestrackAlertVaccine {
  const AppLocalizationsDataQuestrackAlertVaccine({
    required this.sputnik,
    required this.covishield,
    required this.covaxin,
    required this.title,
  });

  final String sputnik;
  final String covishield;
  final String covaxin;
  final String title;
  factory AppLocalizationsDataQuestrackAlertVaccine.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackAlertVaccine(
        sputnik: map['sputnik']! as String,
        covishield: map['covishield']! as String,
        covaxin: map['covaxin']! as String,
        title: map['title']! as String,
      );

  AppLocalizationsDataQuestrackAlertVaccine copyWith({
    String? sputnik,
    String? covishield,
    String? covaxin,
    String? title,
  }) =>
      AppLocalizationsDataQuestrackAlertVaccine(
        sputnik: sputnik ?? this.sputnik,
        covishield: covishield ?? this.covishield,
        covaxin: covaxin ?? this.covaxin,
        title: title ?? this.title,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackAlertVaccine &&
          sputnik == other.sputnik &&
          covishield == other.covishield &&
          covaxin == other.covaxin &&
          title == other.title);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      sputnik.hashCode ^
      covishield.hashCode ^
      covaxin.hashCode ^
      title.hashCode;
}

class AppLocalizationsDataQuestrackAlertsList {
  const AppLocalizationsDataQuestrackAlertsList({
    required this.add,
    required this.delete,
    required this.edit,
    required this.title,
  });

  final String add;
  final String delete;
  final String edit;
  final String title;
  factory AppLocalizationsDataQuestrackAlertsList.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackAlertsList(
        add: map['add']! as String,
        delete: map['delete']! as String,
        edit: map['edit']! as String,
        title: map['title']! as String,
      );

  AppLocalizationsDataQuestrackAlertsList copyWith({
    String? add,
    String? delete,
    String? edit,
    String? title,
  }) =>
      AppLocalizationsDataQuestrackAlertsList(
        add: add ?? this.add,
        delete: delete ?? this.delete,
        edit: edit ?? this.edit,
        title: title ?? this.title,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackAlertsList &&
          add == other.add &&
          delete == other.delete &&
          edit == other.edit &&
          title == other.title);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      add.hashCode ^
      delete.hashCode ^
      edit.hashCode ^
      title.hashCode;
}

class AppLocalizationsDataQuestrackShare {
  const AppLocalizationsDataQuestrackShare({
    required this.button,
    required this.title,
    required this.body,
  });

  final String button;
  final String title;
  final String body;
  factory AppLocalizationsDataQuestrackShare.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackShare(
        button: map['button']! as String,
        title: map['title']! as String,
        body: map['body']! as String,
      );

  AppLocalizationsDataQuestrackShare copyWith({
    String? button,
    String? title,
    String? body,
  }) =>
      AppLocalizationsDataQuestrackShare(
        button: button ?? this.button,
        title: title ?? this.title,
        body: body ?? this.body,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackShare &&
          button == other.button &&
          title == other.title &&
          body == other.body);
  @override
  int get hashCode =>
      runtimeType.hashCode ^ button.hashCode ^ title.hashCode ^ body.hashCode;
}

class AppLocalizationsDataQuestrackReview {
  const AppLocalizationsDataQuestrackReview({
    required this.dialog,
    required this.snack,
  });

  final AppLocalizationsDataQuestrackReviewDialog dialog;
  final AppLocalizationsDataQuestrackReviewSnack snack;
  factory AppLocalizationsDataQuestrackReview.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackReview(
        dialog: AppLocalizationsDataQuestrackReviewDialog.fromJson(
            map['dialog']! as Map<String, Object?>),
        snack: AppLocalizationsDataQuestrackReviewSnack.fromJson(
            map['snack']! as Map<String, Object?>),
      );

  AppLocalizationsDataQuestrackReview copyWith({
    AppLocalizationsDataQuestrackReviewDialog? dialog,
    AppLocalizationsDataQuestrackReviewSnack? snack,
  }) =>
      AppLocalizationsDataQuestrackReview(
        dialog: dialog ?? this.dialog,
        snack: snack ?? this.snack,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackReview &&
          dialog == other.dialog &&
          snack == other.snack);
  @override
  int get hashCode => runtimeType.hashCode ^ dialog.hashCode ^ snack.hashCode;
}

class AppLocalizationsDataQuestrackReviewDialog {
  const AppLocalizationsDataQuestrackReviewDialog({
    required this.no,
    required this.yes,
    required this.body,
  });

  final String no;
  final String yes;
  final String body;
  factory AppLocalizationsDataQuestrackReviewDialog.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackReviewDialog(
        no: map['no']! as String,
        yes: map['yes']! as String,
        body: map['body']! as String,
      );

  AppLocalizationsDataQuestrackReviewDialog copyWith({
    String? no,
    String? yes,
    String? body,
  }) =>
      AppLocalizationsDataQuestrackReviewDialog(
        no: no ?? this.no,
        yes: yes ?? this.yes,
        body: body ?? this.body,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackReviewDialog &&
          no == other.no &&
          yes == other.yes &&
          body == other.body);
  @override
  int get hashCode =>
      runtimeType.hashCode ^ no.hashCode ^ yes.hashCode ^ body.hashCode;
}

class AppLocalizationsDataQuestrackReviewSnack {
  const AppLocalizationsDataQuestrackReviewSnack({
    required this.body,
    required this.title,
  });

  final String body;
  final String title;
  factory AppLocalizationsDataQuestrackReviewSnack.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackReviewSnack(
        body: map['body']! as String,
        title: map['title']! as String,
      );

  AppLocalizationsDataQuestrackReviewSnack copyWith({
    String? body,
    String? title,
  }) =>
      AppLocalizationsDataQuestrackReviewSnack(
        body: body ?? this.body,
        title: title ?? this.title,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackReviewSnack &&
          body == other.body &&
          title == other.title);
  @override
  int get hashCode => runtimeType.hashCode ^ body.hashCode ^ title.hashCode;
}

class AppLocalizationsDataQuestrackMenu {
  const AppLocalizationsDataQuestrackMenu({
    required this.about,
    required this.editCities,
    required this.review,
    required this.switchLocale,
    required this.share,
    required this.signout,
  });

  final String about;
  final String editCities;
  final String review;
  final String switchLocale;
  final String share;
  final String signout;
  factory AppLocalizationsDataQuestrackMenu.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackMenu(
        about: map['about']! as String,
        editCities: map['editCities']! as String,
        review: map['review']! as String,
        switchLocale: map['switchLocale']! as String,
        share: map['share']! as String,
        signout: map['signout']! as String,
      );

  AppLocalizationsDataQuestrackMenu copyWith({
    String? about,
    String? editCities,
    String? review,
    String? switchLocale,
    String? share,
    String? signout,
  }) =>
      AppLocalizationsDataQuestrackMenu(
        about: about ?? this.about,
        editCities: editCities ?? this.editCities,
        review: review ?? this.review,
        switchLocale: switchLocale ?? this.switchLocale,
        share: share ?? this.share,
        signout: signout ?? this.signout,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackMenu &&
          about == other.about &&
          editCities == other.editCities &&
          review == other.review &&
          switchLocale == other.switchLocale &&
          share == other.share &&
          signout == other.signout);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      about.hashCode ^
      editCities.hashCode ^
      review.hashCode ^
      switchLocale.hashCode ^
      share.hashCode ^
      signout.hashCode;
}

class AppLocalizationsDataQuestrackQuestpicker {
  const AppLocalizationsDataQuestrackQuestpicker({
    required this.save,
    required this.citylist,
    required this.errorTooMany,
  });

  final String save;
  final AppLocalizationsDataQuestrackQuestpickerCitylist citylist;
  final AppLocalizationsDataQuestrackQuestpickerErrorTooMany errorTooMany;
  factory AppLocalizationsDataQuestrackQuestpicker.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackQuestpicker(
        save: map['save']! as String,
        citylist: AppLocalizationsDataQuestrackQuestpickerCitylist.fromJson(
            map['citylist']! as Map<String, Object?>),
        errorTooMany:
            AppLocalizationsDataQuestrackQuestpickerErrorTooMany.fromJson(
                map['errorTooMany']! as Map<String, Object?>),
      );

  AppLocalizationsDataQuestrackQuestpicker copyWith({
    String? save,
    AppLocalizationsDataQuestrackQuestpickerCitylist? citylist,
    AppLocalizationsDataQuestrackQuestpickerErrorTooMany? errorTooMany,
  }) =>
      AppLocalizationsDataQuestrackQuestpicker(
        save: save ?? this.save,
        citylist: citylist ?? this.citylist,
        errorTooMany: errorTooMany ?? this.errorTooMany,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackQuestpicker &&
          save == other.save &&
          citylist == other.citylist &&
          errorTooMany == other.errorTooMany);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      save.hashCode ^
      citylist.hashCode ^
      errorTooMany.hashCode;
}

class AppLocalizationsDataQuestrackQuestpickerCitylist {
  const AppLocalizationsDataQuestrackQuestpickerCitylist({
    required this.title,
    required this.missing,
  });

  final String title;
  final AppLocalizationsDataQuestrackQuestpickerCitylistMissing missing;
  factory AppLocalizationsDataQuestrackQuestpickerCitylist.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackQuestpickerCitylist(
        title: map['title']! as String,
        missing:
            AppLocalizationsDataQuestrackQuestpickerCitylistMissing.fromJson(
                map['missing']! as Map<String, Object?>),
      );

  AppLocalizationsDataQuestrackQuestpickerCitylist copyWith({
    String? title,
    AppLocalizationsDataQuestrackQuestpickerCitylistMissing? missing,
  }) =>
      AppLocalizationsDataQuestrackQuestpickerCitylist(
        title: title ?? this.title,
        missing: missing ?? this.missing,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackQuestpickerCitylist &&
          title == other.title &&
          missing == other.missing);
  @override
  int get hashCode => runtimeType.hashCode ^ title.hashCode ^ missing.hashCode;
}

class AppLocalizationsDataQuestrackQuestpickerCitylistMissing {
  const AppLocalizationsDataQuestrackQuestpickerCitylistMissing({
    required this.button,
    required this.dialog,
  });

  final String button;
  final AppLocalizationsDataQuestrackQuestpickerCitylistMissingDialog dialog;
  factory AppLocalizationsDataQuestrackQuestpickerCitylistMissing.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackQuestpickerCitylistMissing(
        button: map['button']! as String,
        dialog: AppLocalizationsDataQuestrackQuestpickerCitylistMissingDialog
            .fromJson(map['dialog']! as Map<String, Object?>),
      );

  AppLocalizationsDataQuestrackQuestpickerCitylistMissing copyWith({
    String? button,
    AppLocalizationsDataQuestrackQuestpickerCitylistMissingDialog? dialog,
  }) =>
      AppLocalizationsDataQuestrackQuestpickerCitylistMissing(
        button: button ?? this.button,
        dialog: dialog ?? this.dialog,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackQuestpickerCitylistMissing &&
          button == other.button &&
          dialog == other.dialog);
  @override
  int get hashCode => runtimeType.hashCode ^ button.hashCode ^ dialog.hashCode;
}

class AppLocalizationsDataQuestrackQuestpickerCitylistMissingDialog {
  const AppLocalizationsDataQuestrackQuestpickerCitylistMissingDialog({
    required this.button,
    required this.title,
  });

  final String button;
  final String title;
  factory AppLocalizationsDataQuestrackQuestpickerCitylistMissingDialog.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackQuestpickerCitylistMissingDialog(
        button: map['button']! as String,
        title: map['title']! as String,
      );

  AppLocalizationsDataQuestrackQuestpickerCitylistMissingDialog copyWith({
    String? button,
    String? title,
  }) =>
      AppLocalizationsDataQuestrackQuestpickerCitylistMissingDialog(
        button: button ?? this.button,
        title: title ?? this.title,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackQuestpickerCitylistMissingDialog &&
          button == other.button &&
          title == other.title);
  @override
  int get hashCode => runtimeType.hashCode ^ button.hashCode ^ title.hashCode;
}

class AppLocalizationsDataQuestrackQuestpickerErrorTooMany {
  const AppLocalizationsDataQuestrackQuestpickerErrorTooMany({
    required String body,
    required String title,
  })  : _body = body,
        _title = title;

  final String _body;
  final String _title;

  String body({
    required String num,
    String? locale,
  }) {
    return _body.insertTemplateValues(
      {
        'num': num,
      },
      locale: locale,
    );
  }

  String title({
    required String num,
    String? locale,
  }) {
    return _title.insertTemplateValues(
      {
        'num': num,
      },
      locale: locale,
    );
  }

  factory AppLocalizationsDataQuestrackQuestpickerErrorTooMany.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackQuestpickerErrorTooMany(
        body: map['body']! as String,
        title: map['title']! as String,
      );

  AppLocalizationsDataQuestrackQuestpickerErrorTooMany copyWith({
    String? body,
    String? title,
  }) =>
      AppLocalizationsDataQuestrackQuestpickerErrorTooMany(
        body: body ?? _body,
        title: title ?? _title,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackQuestpickerErrorTooMany &&
          _body == other._body &&
          _title == other._title);
  @override
  int get hashCode => runtimeType.hashCode ^ _body.hashCode ^ _title.hashCode;
}

class AppLocalizationsDataQuestrackFeed {
  const AppLocalizationsDataQuestrackFeed({
    required this.opencowin,
    required this.title,
    required this.empty,
  });

  final String opencowin;
  final String title;
  final AppLocalizationsDataQuestrackFeedEmpty empty;
  factory AppLocalizationsDataQuestrackFeed.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackFeed(
        opencowin: map['opencowin']! as String,
        title: map['title']! as String,
        empty: AppLocalizationsDataQuestrackFeedEmpty.fromJson(
            map['empty']! as Map<String, Object?>),
      );

  AppLocalizationsDataQuestrackFeed copyWith({
    String? opencowin,
    String? title,
    AppLocalizationsDataQuestrackFeedEmpty? empty,
  }) =>
      AppLocalizationsDataQuestrackFeed(
        opencowin: opencowin ?? this.opencowin,
        title: title ?? this.title,
        empty: empty ?? this.empty,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackFeed &&
          opencowin == other.opencowin &&
          title == other.title &&
          empty == other.empty);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      opencowin.hashCode ^
      title.hashCode ^
      empty.hashCode;
}

class AppLocalizationsDataQuestrackFeedEmpty {
  const AppLocalizationsDataQuestrackFeedEmpty({
    required this.body,
    required this.title,
  });

  final String body;
  final String title;
  factory AppLocalizationsDataQuestrackFeedEmpty.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataQuestrackFeedEmpty(
        body: map['body']! as String,
        title: map['title']! as String,
      );

  AppLocalizationsDataQuestrackFeedEmpty copyWith({
    String? body,
    String? title,
  }) =>
      AppLocalizationsDataQuestrackFeedEmpty(
        body: body ?? this.body,
        title: title ?? this.title,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataQuestrackFeedEmpty &&
          body == other.body &&
          title == other.title);
  @override
  int get hashCode => runtimeType.hashCode ^ body.hashCode ^ title.hashCode;
}

class AppLocalizationsDataLanguage {
  const AppLocalizationsDataLanguage({
    required this.only,
    required this.and,
  });

  final String only;
  final String and;
  factory AppLocalizationsDataLanguage.fromJson(Map<String, Object?> map) =>
      AppLocalizationsDataLanguage(
        only: map['only']! as String,
        and: map['and']! as String,
      );

  AppLocalizationsDataLanguage copyWith({
    String? only,
    String? and,
  }) =>
      AppLocalizationsDataLanguage(
        only: only ?? this.only,
        and: and ?? this.and,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataLanguage &&
          only == other.only &&
          and == other.and);
  @override
  int get hashCode => runtimeType.hashCode ^ only.hashCode ^ and.hashCode;
}

class AppLocalizationsDataUpgrade {
  const AppLocalizationsDataUpgrade({
    required this.button,
    required this.body,
    required this.title,
    required this.network,
    required this.optional,
  });

  final String button;
  final String body;
  final String title;
  final AppLocalizationsDataUpgradeNetwork network;
  final AppLocalizationsDataUpgradeOptional optional;
  factory AppLocalizationsDataUpgrade.fromJson(Map<String, Object?> map) =>
      AppLocalizationsDataUpgrade(
        button: map['button']! as String,
        body: map['body']! as String,
        title: map['title']! as String,
        network: AppLocalizationsDataUpgradeNetwork.fromJson(
            map['network']! as Map<String, Object?>),
        optional: AppLocalizationsDataUpgradeOptional.fromJson(
            map['optional']! as Map<String, Object?>),
      );

  AppLocalizationsDataUpgrade copyWith({
    String? button,
    String? body,
    String? title,
    AppLocalizationsDataUpgradeNetwork? network,
    AppLocalizationsDataUpgradeOptional? optional,
  }) =>
      AppLocalizationsDataUpgrade(
        button: button ?? this.button,
        body: body ?? this.body,
        title: title ?? this.title,
        network: network ?? this.network,
        optional: optional ?? this.optional,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataUpgrade &&
          button == other.button &&
          body == other.body &&
          title == other.title &&
          network == other.network &&
          optional == other.optional);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      button.hashCode ^
      body.hashCode ^
      title.hashCode ^
      network.hashCode ^
      optional.hashCode;
}

class AppLocalizationsDataUpgradeNetwork {
  const AppLocalizationsDataUpgradeNetwork({
    required this.waiting,
  });

  final String waiting;
  factory AppLocalizationsDataUpgradeNetwork.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataUpgradeNetwork(
        waiting: map['waiting']! as String,
      );

  AppLocalizationsDataUpgradeNetwork copyWith({
    String? waiting,
  }) =>
      AppLocalizationsDataUpgradeNetwork(
        waiting: waiting ?? this.waiting,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataUpgradeNetwork && waiting == other.waiting);
  @override
  int get hashCode => runtimeType.hashCode ^ waiting.hashCode;
}

class AppLocalizationsDataUpgradeOptional {
  const AppLocalizationsDataUpgradeOptional({
    required this.body,
    required this.title,
  });

  final String body;
  final String title;
  factory AppLocalizationsDataUpgradeOptional.fromJson(
          Map<String, Object?> map) =>
      AppLocalizationsDataUpgradeOptional(
        body: map['body']! as String,
        title: map['title']! as String,
      );

  AppLocalizationsDataUpgradeOptional copyWith({
    String? body,
    String? title,
  }) =>
      AppLocalizationsDataUpgradeOptional(
        body: body ?? this.body,
        title: title ?? this.title,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataUpgradeOptional &&
          body == other.body &&
          title == other.title);
  @override
  int get hashCode => runtimeType.hashCode ^ body.hashCode ^ title.hashCode;
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

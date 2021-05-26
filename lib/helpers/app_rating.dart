import 'package:fire_starter/fire_starter.dart';
import 'package:fire_starter/ui/components/widgets/glass/glass_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fire_starter/localizations.dart';

requestReview(context, String feedbackURL) async {
  final InAppReview inAppReview = InAppReview.instance;
  if (await inAppReview.isAvailable()) {
    showDialog(context: context, builder: (_) => RateAppDialog(inAppReview, feedbackURL), useRootNavigator: true);
    if (GetPlatform.isAndroid) inAppReview.requestReview();
  } else {
    inAppReview.openStoreListing(appStoreId: FireStarter.settings['app']?['appStoreId']);
  }
}

class RateAppDialog extends StatelessWidget {
  RateAppDialog(this.inAppReview, this.feedbackURL);
  final InAppReview inAppReview;
  final String feedbackURL;
  @override
  Widget build(BuildContext context) {
    final labels = context.localizations;
    return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        title: Text(labels.questrack.review.dialog.body, style: TextStyle(fontSize: 22)),
        content: Container(
            padding: EdgeInsets.all(2),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      minimumSize: Size(88, 36),
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 18),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(42))),
                    ),
                    onPressed: () {
                      if (GetPlatform.isAndroid)
                        inAppReview.openStoreListing(appStoreId: FireStarter.settings['app']?['appStoreId']);
                      else {
                        Navigator.pop(context);
                        inAppReview.requestReview();
                      }
                    },
                    child: Text(labels.questrack.review.dialog.yes,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ))),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.pink,
                    minimumSize: Size(88, 36),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 18),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(42))),
                  ),
                  onPressed: () => launch(feedbackURL),
                  child: Text(labels.questrack.review.dialog.no, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 18))),
            ])));
  }
}

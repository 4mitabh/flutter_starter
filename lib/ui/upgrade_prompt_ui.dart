import 'package:fire_starter/fire_starter.dart';
import 'package:fire_starter/helpers/helpers.dart';
import 'package:fire_starter/services/upgrade_check.dart';
import 'package:fire_starter/ui/components/components.dart';
import 'package:fire_starter/ui/components/widgets/glass/blob.dart';
import 'package:fire_starter/ui/components/widgets/glass/glass_card.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:fire_starter/localizations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpgradePromptUI extends StatefulWidget {
  UpgradePromptUI();

  @override
  _UpgradePromptUIState createState() => _UpgradePromptUIState();
}

class _UpgradePromptUIState extends State<UpgradePromptUI> {
  @override
  Widget build(BuildContext context) {
    final AppLocalizationsData? labels = context.localizations;
    switch (UpgradeCheckService.check) {
      case -1:
        Future.delayed(Duration(seconds: 1)).then((value) => mounted ? setState(() {}) : null);
        return Material(
          child: SizedBox.expand(
              child: Container(
                  color: Color.fromRGBO(33, 33, 33, 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Image(height: 40, image: AssetImage('assets/sync.gif')),
                      ),
                      Text(
                        labels?.upgrade.network.waiting ?? 'Waiting for a network connection...',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ))),
        );
      case 1:
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: BlobBackground(
                child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Padding(
                padding: EdgeInsets.only(top: 150, bottom: 150),
                child: GlassCard(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          labels?.upgrade.title ?? 'Upgrade Required...',
                          style: TextStyle(fontSize: 32),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            labels?.upgrade.body ?? 'This will take less than a minuite....',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        PrimaryButton(
                            child: Text(labels?.upgrade.button ?? 'Upgrade'),
                            onPressed: () => InAppReview.instance.openStoreListing(appStoreId: FireStarter.settings['app']?['appStoreId']))
                      ],
                    ),
                  ),
                ),
              ),
            )));
      case 2:
        UpgradeCheckService.reset();
        Future.delayed(Duration(seconds: 10)).then((value) {
          showSnackBar(
              labels?.upgrade.optional.title ?? 'Upgrade Available', labels?.upgrade.optional.body ?? 'It is recommended that you update to the latest build');
        });
        Future.delayed(Duration(milliseconds: 10)).then((_) => Get.offAllNamed('/'));
        break;
      case 0:
        Future.delayed(Duration(milliseconds: 10)).then((_) => Get.offAllNamed('/'));
        break;
    }
    return Container();
  }
}

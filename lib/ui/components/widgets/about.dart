import 'package:fire_starter/services/auth_service.dart';
import 'package:fire_starter/services/package_info.dart';
import 'package:fire_starter/ui/components/components.dart';
import 'package:fire_starter/ui/components/widgets/glass/glass_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:questrack/ui/feed/feed.dart';
import 'package:questrack/ui/feed/feed_controller.dart';
import 'package:questrack/ui/quest_picker/quest_picker.dart';
import 'package:questrack/ui/quest_picker/quest_list_controller.dart';

class AboutAppDialog extends StatefulWidget {
  const AboutAppDialog({
    Key? key,
  }) : super(key: key);

  @override
  _AboutAppDialogState createState() => _AboutAppDialogState();
}

class _AboutAppDialogState extends State<AboutAppDialog> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      color: Theme.of(context).colorScheme.background,
      child: Container(
          height: 120,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                child: Row(
                  children: [
                    BackButton(
                      color: Colors.pink,
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ],
                ),
              ),
              Spacer(),
              GestureDetector(
                  onTap: () => setState(() => this._count++), child: Text(PackageInfoService.appName, style: Theme.of(context).textTheme.headline3)),
              Text('${PackageInfoService.majorVersion}.${PackageInfoService.minorVersion}.${PackageInfoService.buildNumber}',
                  style: Theme.of(context).textTheme.subtitle1),
              Expanded(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Text('${AuthService.to.firebaseUser.value!.uid}', style: Theme.of(context).textTheme.subtitle2),
              )),
              if (_count > 10) showHidden()
            ],
          )),
    );
  }

  Widget showHidden() {
    return Text('${AuthService.to.firebaseUser.value!.uid}', style: Theme.of(context).textTheme.subtitle2);
  }
}

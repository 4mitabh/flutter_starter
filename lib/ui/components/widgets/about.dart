import 'package:fire_starter/constants/globals.dart';
import 'package:fire_starter/services/auth_service.dart';
import 'package:fire_starter/services/config_service.dart';
import 'package:fire_starter/services/package_info.dart';

import 'package:fire_starter/ui/components/widgets/glass/glass_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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
          child: Material(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [BackButton(color: Colors.pink, onPressed: () => Navigator.pop(context))]),
                Spacer(),
                GestureDetector(
                    onTap: () => setState(() => this._count++), child: Text(PackageInfoService.appName, style: Theme.of(context).textTheme.headline3)),
                Text('${PackageInfoService.majorVersion}.${PackageInfoService.minorVersion}.${PackageInfoService.buildNumber}',
                    style: Theme.of(context).textTheme.subtitle1),
                Expanded(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text('${AuthService.to.firebaseUser.value?.uid ?? ''}', style: Theme.of(context).textTheme.subtitle2),
                )),
                if (_count > 10 || ConfigStorage.diagnostics) showHidden()
              ],
            ),
          )),
    );
  }

  Widget showHidden() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Diagnostics: '),
            Switch(
              value: ConfigStorage.diagnostics,
              onChanged: (v) {
                ConfigStorage.saveDiagnostics(v);
                setState(() {});
              },
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Alpha: '),
            Switch(
              value: ConfigStorage.isAlpha,
              onChanged: (v) {
                ConfigStorage.saveAlpha(v);
                setState(() {});
              },
            ),
          ],
        ),
      ],
    );
  }
}

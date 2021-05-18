import 'package:fire_starter/constants/globals.dart';
import 'package:fire_starter/helpers/helpers.dart';
import 'package:fire_starter/services/auth_service.dart';
import 'package:fire_starter/services/upgrade_check.dart';
import 'package:fire_starter/ui/components/widgets/logo_graphic_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrereqsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    checks();
    return Scaffold(
      body: Container(
        child: Center(
          child: LogoGraphicHeader(),
        ),
      ),
    );
  }

  Future goTo(String path, {int delay = 20}) => Future.delayed(Duration(milliseconds: delay)).then((value) => Get.offAllNamed(path));

  Future checks() {
    if (UpgradeCheckService.check != 0) return goTo('/${RouteNames.UPGRADE}');
    if (AuthService.to.firebaseUser.value?.uid == null) return goTo('/${RouteNames.SIGN_IN}');
    if (AuthService.to.firestoreUser.value == null) return goTo('/', delay: 200);
    if (AuthService.to.firestoreUser.value!.memberOf.length == 0) {
      GetLogger.to.w('Empty memberOf ${AuthService.to.firestoreUser.value!}');
      return goTo('/', delay: 600);
    }
    return goTo('/${RouteNames.HOME}');
  }
}

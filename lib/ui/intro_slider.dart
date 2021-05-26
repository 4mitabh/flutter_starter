import 'dart:math';

import 'package:fire_starter/services/config_service.dart';
import 'package:fire_starter/services/package_info.dart';
import 'package:fire_starter/ui/components/widgets/glass/blob.dart';
import 'package:get/get.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';

class IntroSliderUI extends StatelessWidget {
  makeSlides(context) {
    if (PackageInfoService.metadata!.introSlider != null && PackageInfoService.metadata!.introSlider!.length == 0) {
      Future.delayed(Duration(milliseconds: 10000)).then((value) => onDonePress());
      return [];
    }
    print(PackageInfoService.metadata!.introSlider_hi.toString());
    return (ConfigStorage.locale == 'hi')
        ? PackageInfoService.metadata!.introSlider_hi!.map((e) => makeSlide(context, e)).toList()
        : PackageInfoService.metadata!.introSlider!.map((e) => makeSlide(context, e)).toList();
  }

  Slide makeSlide(BuildContext context, Map slide) {
    print(slide);
    return new Slide(
        title: (slide['title'] as String).replaceAll('\\n', '\n'),
        description: slide['description'].replaceAll('\\n', '\n'),
        styleTitle: Theme.of(context).textTheme.headline3,
        styleDescription: Theme.of(context).textTheme.headline6,
        pathImage: slide['image'],
        backgroundColor: Color((slide['color'] ?? Random().nextInt(0xFFFFFF)) as int).withAlpha(50),
        maxLineTitle: 5,
        maxLineTextDescription: 20);
  }

  @override
  Widget build(BuildContext context) {
    List<Slide> slides = makeSlides(context);
    return Scaffold(
        body: (slides.length != 0)
            ? BlobBackground(
                child: IntroSlider(
                colorDoneBtn: Colors.white,
                showSkipBtn: false,
                styleDoneBtn: TextStyle(color: Colors.black),
                showNextBtn: true,
                slides: slides,
                onDonePress: this.onDonePress,
              ))
            : Container());
    // Scaffold(body: BlobBackground(child: Text('')));
  }

  void onDonePress() {
    ConfigStorage.saveShowIntroSlider(false);
    Get.offAllNamed('/');
  }
}

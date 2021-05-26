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
    return PackageInfoService.metadata!.introSlider!.map((e) => makeSlide(context, e)).toList();
  }

  Slide makeSlide(BuildContext context, Map slide) {
    return new Slide(
      title: slide['title'],
      description: slide['description'],
      styleTitle: Theme.of(context).textTheme.headline3,
      styleDescription: Theme.of(context).textTheme.headline6,
      pathImage: slide['image'],
      backgroundColor: slide['color'] ?? Colors.transparent,
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Slide> slides = makeSlides(context);
    return Scaffold(
        body: (slides.length != 0)
            ? BlobBackground(
                child: IntroSlider(
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

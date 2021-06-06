import 'package:fire_starter/controllers/theme_controller.dart';
import 'package:fire_starter/services/app_themes.dart';
import 'package:flutter/material.dart';

class LineButton extends StatelessWidget {
  LineButton(
      {this.labelText = '',
      required this.onPressed,
      this.radius = AppTheme.containerRadius,
      this.child,
      this.color,
      this.lineWidth = 2,
      this.padding = const EdgeInsets.all(8)});
  final String labelText;
  final double radius;
  final Color? color;
  final double lineWidth;
  final EdgeInsetsGeometry padding;
  final Widget? child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        child: this.child ??
            Text(
              labelText.toUpperCase(),
            ),

        // color: Theme.of(context).backgroundColor.withAlpha(AppThemes.containerAlpha ~/ 4),
        style: ElevatedButton.styleFrom(
          side: BorderSide(width: lineWidth, color: color ?? Theme.of(context).buttonColor.withAlpha(AppTheme.containerAlpha ~/ 2)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(this.radius),
          ),
          padding: this.padding,
        ));
  }
}

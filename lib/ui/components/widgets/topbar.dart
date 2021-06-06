import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:fire_starter/controllers/theme_controller.dart';
import 'package:fire_starter/helpers/helpers.dart';
import 'package:fire_starter/ui/components/widgets/line_button.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final void Function()? onBack;
  final String title;
  final List<Widget>? actions;

  TopBar({
    required this.title,
    this.onBack,
    this.actions,
    Key? key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme.onBackground;
    return AppBar(
      actions: actions,
      shadowColor: Colors.transparent,
      title: AutoSizeText(title, style: Theme.of(context).textTheme.headline5, maxLines: 1),
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: true,
      leading: (onBack == null)
          ? null
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: LineButton(
                radius: 8,
                padding: EdgeInsets.all(4),
                child: Icon(Icons.chevron_left, color: color),
                color: color,
                onPressed: onBack!,
              ),
            ),
    );
  }
}

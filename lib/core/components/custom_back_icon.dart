import 'package:flutter/material.dart';
import 'package:smart_realty/generated/l10n.dart';

import 'custom_build_style_of_icon.dart';

class CustomBackIcon extends StatelessWidget {
  const CustomBackIcon({
    super.key,
    this.onTap,
    this.color,
    this.bgColor,
    this.margin,
  });
  final void Function()? onTap;
  final Color? color;
  final Color? bgColor;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      child: CustomBuildStyleIcon(
        icon: Icons.arrow_back_rounded,
        tooltip: S.of(context).back,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../core/theme/colors/colors.dart';
import '../../../../../core/widgets/custom_text.dart';

class CustomPropertyComponents extends StatelessWidget {
  const CustomPropertyComponents({
    super.key,
    required this.icon,
    required this.count,
    required this.nameOfComponent,
    this.color,
    this.padding,
    this.customStyle,
    this.iconSize,
    this.iconColor,
  });
  final IconData icon;
  final double? iconSize;
  final int count;
  final String nameOfComponent;
  final Color? color;
  final Color? iconColor;
  final EdgeInsetsGeometry? padding;
  final TextStyle? customStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          color: color ?? AppColor.kMainBGColor,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Icon(
            icon,
            size: iconSize,
            color: iconColor ?? AppColor.KGreyColor,
          ),
          const SizedBox(
            width: 5,
          ),
          CustomText(
            text: "$count $nameOfComponent",
            customStyle: customStyle ?? Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}

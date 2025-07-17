import 'package:flutter/material.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';

import 'custom_text.dart';

class SegmentedControl extends StatelessWidget {
  const SegmentedControl({
    super.key,
    this.onPressed,
    this.radius,
    required this.title,
    required this.isSelected,
    this.borderColor,
  });
  final String title;
  final bool isSelected;

  final void Function()? onPressed;
  final Color? borderColor;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            shadowColor: null,
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius ?? 50))),
            side: WidgetStatePropertyAll(
              BorderSide(
                color: borderColor ?? AppColor.KGreyColor,
              ),
            ),
            backgroundColor: WidgetStatePropertyAll(
                isSelected ? AppColor.kMainColor : AppColor.KWhiteColor)),
        child: CustomText(
          text: title,
          textColor: isSelected ? AppColor.KWhiteColor : Colors.grey,
          fontSize: 14,
        ));
  }
}

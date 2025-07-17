import 'package:flutter/material.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';

import 'custom_text.dart';

class CustomTextAndTextButton extends StatelessWidget {
  const CustomTextAndTextButton({
    super.key,
    required this.textTitle,
    required this.textButtonTitle,
    required this.onPressed,
    this.decoration,
    this.fontWeight,
    this.fontSize,
  });
  final String textTitle;
  final String textButtonTitle;
  final void Function()? onPressed;
  final TextDecoration? decoration;
  final FontWeight? fontWeight;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text: textTitle,
          fontSize: 14,
          textColor: AppColor.KSecondTextColor,
        ),
        TextButton(
          onPressed: onPressed,
          child: CustomText(
            text: textButtonTitle,
            decoration: decoration ?? TextDecoration.underline,
            fontSize: fontSize ?? 15,
            fontWeight: fontWeight,
            textColor: AppColor.kMainColor,
          ),
        )
      ],
    );
  }
}

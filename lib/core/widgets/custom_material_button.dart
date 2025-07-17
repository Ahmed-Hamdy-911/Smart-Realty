import 'package:flutter/material.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';
import 'custom_text.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    required this.onPressed,
    this.text,
    this.color,
    this.widget,
    this.minWidth,
    this.height,
    this.radius = 10,
    this.customBorderSide,
  });

  final String? text;
  final void Function()? onPressed;
  final Color? color;

  final Widget? widget;
  final double? minWidth;
  final double? height;
  final double? radius;
  final BorderSide? customBorderSide;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: onPressed,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: customBorderSide ?? BorderSide.none,
        ),
        height: height ?? MediaQuery.of(context).size.height * 0.07,
        minWidth: minWidth ?? MediaQuery.of(context).size.width,
        color: color ?? AppColor.kMainColor,
        // textColor: Colors.white,
        child: widget ??
            CustomText(
              text: text ?? '',
              customStyle: Theme.of(context).textTheme.labelMedium,
            ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../theme/colors/colors.dart';
import '../widgets/custom_text.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
    this.backgroundColor,
    this.onPressed,
  });
  final Color? backgroundColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed ?? () {},
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(backgroundColor),
        ),
        child: const CustomText(
          text: "Skip",
          textColor: AppColor.kMainColor,
          decoration: TextDecoration.underline,
        ));
  }
}

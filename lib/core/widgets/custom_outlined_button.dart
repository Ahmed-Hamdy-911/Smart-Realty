import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.onPressed,
    required this.widget,
    this.backgroundColor,
    this.shape,
    this.paddingHorizontal,
    this.paddingVertical,
  });
  final void Function()? onPressed;
  final Widget widget;
  final Color? backgroundColor;
  final OutlinedBorder? shape;
  final double? paddingHorizontal;
  final double? paddingVertical;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        
        style: ButtonStyle(
          backgroundColor:
              WidgetStatePropertyAll(backgroundColor ?? Colors.white),
          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
              vertical:paddingHorizontal?? 14, horizontal: paddingHorizontal ?? 0.0)),
          shape: WidgetStatePropertyAll(
            shape ?? const CircleBorder(),
          ),
          side: WidgetStatePropertyAll(
            BorderSide(color: Colors.grey.withOpacity(0.5)),
          ),
        ),
        child: widget);
  }
}

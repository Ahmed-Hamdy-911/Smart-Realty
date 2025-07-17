import 'package:flutter/material.dart';
import '../theme/colors/colors.dart';

class CustomBuildStyleIcon extends StatelessWidget {
  const CustomBuildStyleIcon({
    super.key,
    required this.icon,
    this.onPressed,
    required this.tooltip,
    this.radius,
    this.iconSize,
    this.backgroundColor,
  });

  final double? radius;
  final Color? backgroundColor;
  final String tooltip;
  final IconData icon;
  final double? iconSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    // Responsive radius calculation
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final bool isTablet = screenWidth > 600; // Breakpoint for tablets
    final double responsiveRadius = isTablet
        ? screenWidth * 0.04 // Smaller radius for tablets
        : screenWidth * 0.06; // Default radius for phones

    return CircleAvatar(
      backgroundColor: backgroundColor ?? AppColor.KWhiteColor,
      radius: radius ?? responsiveRadius, // Use responsive radius
      child: IconButton(
        onPressed: onPressed,
        tooltip: tooltip,
        icon: Icon(
          icon,
          color: AppColor.kMainColor,
          size:
              iconSize ?? (isTablet ? 28 : 24), // Adjust icon size for tablets
        ),
      ),
    );
  }
}

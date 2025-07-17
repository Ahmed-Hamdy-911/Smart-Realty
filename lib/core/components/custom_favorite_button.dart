import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../theme/colors/colors.dart';

class CustomFavoriteButton extends StatelessWidget {
  const CustomFavoriteButton({super.key, this.color, this.isFavorite = false});
  final Color? color;
  final bool isFavorite;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: MediaQuery.of(context).size.width * 0.055,
        backgroundColor: color ?? Colors.white.withOpacity(0.6),
        child: IconButton(
          onPressed: () {},
          icon: Icon(isFavorite ? IconlyBold.heart : IconlyLight.heart,
              color: AppColor.kMainColor,
              size: MediaQuery.of(context).size.width * 0.06),
        ));
  }
}

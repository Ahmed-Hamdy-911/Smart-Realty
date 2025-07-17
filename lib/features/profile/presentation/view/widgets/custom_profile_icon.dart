import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';

import '../../../../../core/widgets/custom_text.dart';

class CustomBuildProfileItem extends StatelessWidget {
  const CustomBuildProfileItem(
      {super.key,
      required this.iconLeading,
      required this.itemTitle,
      required this.onTap});
  final IconData iconLeading;
  final String itemTitle;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          onTap: onTap,
          hoverColor: Colors.transparent,
          // focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          leading: Icon(
            iconLeading,
            color: AppColor.kMainColor,
          ),
          title: CustomText(
            text: itemTitle,
            customStyle: Theme.of(context).textTheme.displaySmall,
          ),
          trailing: const Icon(
            size: 20,
            Icons.arrow_forward_ios,
            color: AppColor.kMainColor,
          ),
        ),
        Divider(
          height: 10,
          color: Colors.grey[300],
        )
      ],
    );
  }
}

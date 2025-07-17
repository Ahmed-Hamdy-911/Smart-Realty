import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../core/components/custom_build_style_of_icon.dart';
import '../../../../../core/theme/colors/colors.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../generated/l10n.dart';
import '../../../../location/location_access_view.dart';

PreferredSizeWidget appBarHome(context) => AppBar(
      backgroundColor: AppColor.kMainBGColor,
      automaticallyImplyLeading: false,
      title: PopupMenuButton(
        tooltip: 'Location',
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LocationAccessView()),
                );
              },
              child: Row(
                children: [
                  const Icon(
                    IconlyBroken.location,
                    color: AppColor.kMainColor,
                  ),
                  const SizedBox(width: 10),
                  CustomText(
                    text: S.of(context).ChangeLocation,
                    customStyle: const TextStyle(
                      fontSize: 14,
                      color: AppColor.KBlackColor,
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              IconlyLight.location,
              color: AppColor.kMainColor,
            ),
            CustomText(
              text: "New York, USA",
              textColor: AppColor.KBlackColor,
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
            Icon(IconlyLight.arrow_down_2),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 12),
          child: CustomBuildStyleIcon(
            tooltip: S.of(context).Notifications,
            icon: IconlyLight.notification,
            onPressed: () {},
          ),
        ),
      ],
    );

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:smart_realty/features/location/set_location_manually_view.dart';
import 'package:smart_realty/generated/l10n.dart';

import '../../core/theme/colors/colors.dart';
import '../../core/widgets/custom_material_button.dart';
import '../../core/widgets/custom_text.dart';
import '../../core/widgets/custom_text_and_text_button.dart';

class LocationAccessView extends StatelessWidget {
  const LocationAccessView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: const [
          // SkipButton(
          //   onPressed: () {
          //     NavigationHelper.naviPushAndRemoveUntil(context,
          //         widgetName: const HomeView());
          //   },
          // )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: width * 0.2,
                  backgroundColor: Colors.grey[200],
                  child: Icon(
                    IconlyBold.location,
                    size: width * 0.2,
                    color: AppColor.kMainColor,
                  ),
                ),
                SizedBox(height: width * 0.1),
                CustomText(
                  text: S.of(context).WhatIsYourLocation,
                  fontSize: width * 0.065,
                  fontWeight: FontWeight.bold,
                  textColor: AppColor.KBlackColor,
                ),
                SizedBox(height: width * 0.03),
                CustomText(
                  text: S.of(context).LocationPurpose,
                  fontSize: width * 0.038,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: width * 0.12),
                CustomMaterialButton(
                  onPressed: () {},
                  radius: 30,
                  widget: CustomText(
                    text: S.of(context).AllowLocationAccess,
                    fontSize: 15,
                    textColor: AppColor.kMainBGColor,
                  ),
                ),
                SizedBox(height: width * 0.02),
                CustomTextAndTextButton(
                  textTitle: "",
                  decoration: TextDecoration.underline,
                  textButtonTitle: S.of(context).EnterLocationManually,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SetLocationManuallyView(),
                        ));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

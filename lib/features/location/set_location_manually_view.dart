import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';
import 'package:smart_realty/generated/l10n.dart';

import '../../core/components/custom_back_icon.dart';
import '../../core/widgets/custom_text.dart';
import '../../core/widgets/custom_text_and_text_button.dart';
import '../../core/widgets/custom_text_form.dart';

class SetLocationManuallyView extends StatefulWidget {
  const SetLocationManuallyView({super.key});

  @override
  State<SetLocationManuallyView> createState() =>
      _SetLocationManuallyViewState();
}

class _SetLocationManuallyViewState extends State<SetLocationManuallyView> {
  // final _formKey = GlobalKey<FormState>();
  final TextEditingController _locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 15,
        leading: const CustomBackIcon(),
        centerTitle: true,
        title: CustomText(
          text: S.of(context).EnterYourLocation,
          textColor: AppColor.KBlackColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFormField(
              hintText: S.of(context).EnterYourLocation,
              controller: _locationController,
              prefixIcon: IconButton(
                  onPressed: () {}, icon: const Icon(IconlyLight.search)),
              suffixIcon: IconButton(
                  onPressed: () {
                    _locationController.clear();
                  },
                  icon: const Icon(IconlyBroken.close_square)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              children: [
                const Icon(
                  IconlyBold.send,
                  color: AppColor.kMainColor,
                ),
                CustomTextAndTextButton(
                    textTitle: "",
                    textButtonTitle: S.of(context).UseMyCurrentLocation,
                    decoration: TextDecoration.none,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    onPressed: () {}),
              ],
            ),
            Divider(
              thickness: 1,
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CustomText(
              text: S.of(context).SearchResult,
              letterSpacing: 1.7,
              textColor: Colors.grey,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search result list
                Row(
                  children: [
                    const Icon(
                      IconlyBold.send,
                      color: AppColor.kMainColor,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                    const CustomText(
                      text: "Golden Avenue", // search result
                      fontWeight: FontWeight.bold,
                      textColor: Colors.black87,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.006),
                const CustomText(
                  text: "8502 Preston Rd. Inge..", // search result
                  textColor: Colors.grey,
                  fontSize: 13,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

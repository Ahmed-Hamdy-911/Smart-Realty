import 'package:flutter/material.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';
import 'package:smart_realty/generated/l10n.dart';
import '../widgets/custom_material_button.dart';
import '../widgets/custom_text.dart';

showConfirmationBottomSheet(BuildContext context,
    {required String title,
    required String titleOfConfirm,
    required Widget descriptionWidget,
    required void Function()? onConfirm,
    double? height}) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: height ?? MediaQuery.of(context).size.height * 0.33,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsetsDirectional.all(14),
        child: Column(
          children: [
            Divider(
              thickness: 5,
              color: Colors.grey.shade300,
              indent: MediaQuery.of(context).size.width * 0.35,
              endIndent: MediaQuery.of(context).size.width * 0.35,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: title,
                  fontSize: 20,
                  textColor: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            Divider(
              height: 15,
              color: Colors.grey[300],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 8.0),
              child: descriptionWidget,
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: CustomMaterialButton(
                      height: MediaQuery.of(context).size.height * 0.07,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: const Color(0xffededed),
                      widget: CustomText(
                        text: S.of(context).Cancel,
                        fontSize: 16,
                        textColor: AppColor.kMainColor,
                      )),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: CustomMaterialButton(
                      height: MediaQuery.of(context).size.height * 0.07,
                      onPressed: onConfirm,
                      widget: CustomText(
                        text: titleOfConfirm,
                        fontSize: 16,
                        textColor: AppColor.kMainBGColor,
                      )),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

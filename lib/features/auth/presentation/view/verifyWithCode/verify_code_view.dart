import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:smart_realty/core/widgets/custom_text_and_text_button.dart';
import 'package:smart_realty/generated/l10n.dart';

import '../../../../../core/components/custom_back_icon.dart';
import '../../../../../core/theme/colors/colors.dart';
import '../../../../../core/widgets/custom_material_button.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../profile/presentation/view/complete_profile_view.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({
    super.key,
    required this.email,
  });
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackIcon(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CustomText(
                text: S.of(context).VerifyCode,
                customStyle: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: S.of(context).EnterCode,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    TextSpan(
                      text: email,
                      style: const TextStyle(
                          fontSize: 14,
                          color: AppColor.kMainColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: PinCodeTextField(
                appContext: context,
                length: 6,
                keyboardType: TextInputType.number,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                enablePinAutofill: true,
                obscureText: true,
                hintCharacter: "-",
                autoFocus: true,
                cursorColor: AppColor.KBlackColor,
                pinTheme: PinTheme(
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                  borderWidth: 0.3,
                  shape: PinCodeFieldShape.underline,
                  activeColor: Colors.grey,
                  disabledColor: Colors.grey,
                  selectedColor: AppColor.kMainColor,
                  inactiveColor: Colors.grey[300],
                  fieldWidth: MediaQuery.of(context).size.width * 0.14,
                  fieldHeight: MediaQuery.of(context).size.height * 0.065,
                ),
              ),
            ),
            CustomTextAndTextButton(
                textTitle: S.of(context).DidnotReceiveCode,
                textButtonTitle: S.of(context).ResendCode,
                onPressed: () {}),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            CustomMaterialButton(
              onPressed: () {
                // NavigationHelper.naviPushAndRemoveUntil(context,
                //     widgetName: const CompleteProfileView());
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CompleteProfileView(),
                    ));
              },
              radius: 50,
              widget: CustomText(
                text: S.of(context).Verify,
                textColor: AppColor.kMainBGColor,
                fontSize: 19,
              ),
            )
          ],
        ),
      ),
    );
  }
}

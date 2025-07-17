import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';

import '../../../../../core/widgets/custom_material_button.dart';
import '../../../../../core/widgets/custom_text.dart';

class VerificationEmailAuthView extends StatefulWidget {
  const VerificationEmailAuthView({
    super.key,
    required this.email,
  });
  final String email;

  @override
  State<VerificationEmailAuthView> createState() =>
      _VerificationEmailAuthViewState();
}

class _VerificationEmailAuthViewState extends State<VerificationEmailAuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kMainBGColor,
        // leading: const CustomBackIcon(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Lottie.asset('assets/animation/Animation - 1718041914581.json'),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        AppColor.kMainColor.withOpacity(0.5),
                        AppColor.kMainColor.withOpacity(0.3),
                        AppColor.kMainColor.withOpacity(0.1),
                        AppColor.kMainColor.withOpacity(0.05),
                        AppColor.kMainColor.withOpacity(0.02),
                      ])),
                  child: CustomText(
                    text: "Verify Your Email...",
                    customStyle: GoogleFonts.kalam(
                        textStyle: TextStyle(
                      color: AppColor.kMainColor,
                      fontSize: MediaQuery.of(context).size.width * 0.09,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  child: RichText(
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      const TextSpan(
                          text:
                              'We have sent you a link to verify your email address.\n to ',
                          style: TextStyle(
                            color: Colors.black54,
                          )),
                      TextSpan(
                        text: widget.email,
                        style: const TextStyle(color: Colors.blue, height: 1.7),
                      ),
                    ]),
                  ),
                ),
                CustomMaterialButton(
                    onPressed: () {
                      // NavigationHelper.naviPushAndRemoveUntil(context,
                      //     widgetName: const CompleteProfileView());
                    },
                    radius: 50,
                    widget: const CustomText(
                      textColor: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w300,
                      text: 'Continue',
                    )),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const CustomText(
                        text: 'Resend Code?',
                        decoration: TextDecoration.underline,
                        height: 0.7,
                        fontSize: 16,
                        textColor: AppColor.kMainColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

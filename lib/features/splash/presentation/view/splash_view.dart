import 'package:flutter/material.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';
import 'package:smart_realty/core/widgets/custom_material_button.dart';
import 'package:smart_realty/core/widgets/custom_text.dart';
import 'package:smart_realty/features/auth/presentation/view/emailAndPassword/sign_in_view.dart';
import 'package:smart_realty/generated/l10n.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    // var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: h * 0.55,
            decoration: const BoxDecoration(
                color: Color(0xffC4C4C4),
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(200),
                )),
          ),
          SizedBox(
            height: h * 0.08,
          ),
          CustomText(
              text: S.of(context).splashText1,
              textAlign: TextAlign.center,
              customStyle: Theme.of(context).textTheme.headlineLarge),
          SizedBox(
            height: h * 0.04,
          ),
          CustomText(
              text: S.of(context).splashText2,
              textAlign: TextAlign.center,
              customStyle: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height: h * 0.08),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColor.kMainBGColor,
        child: CustomMaterialButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignInView(),
                ),
                (r) => false);
          },
          text: S.of(context).GetStarted,
        ),
      ),
    );
  }
}

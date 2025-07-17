import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';
import 'package:smart_realty/features/auth/presentation/view/emailAndPassword/sign_up_view.dart';
import 'package:smart_realty/features/auth/presentation/view/forget_password/forget_password_view.dart';
import 'package:smart_realty/generated/l10n.dart';

import '../../../../../core/widgets/custom_material_button.dart';
import '../../../../../core/widgets/custom_outlined_button.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/custom_text_and_text_button.dart';
import '../../../../../core/widgets/custom_text_form.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                      child: Column(
                    children: [
                      CustomText(
                        text: S.of(context).SignIn,
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        textColor: AppColor.kMainColor,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      CustomText(
                        text: S.of(context).WelcomeBack,
                        textColor: Colors.black54,
                        fontSize: 14,
                      ),
                    ],
                  )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  CustomText(
                    text: S.of(context).Email,
                    customStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 15),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  CustomTextFormField(
                    hintText: S.of(context).EnterEmail,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(" "),
                    ],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return S.of(context).FieldRequired;
                      } else if (!RegExp(
                              r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
                          .hasMatch(value)) {
                        return S.of(context).InvalidEmail;
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  CustomText(
                    text: S.of(context).Password,
                    customStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 15),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  CustomTextFormField(
                    hintText: S.of(context).EnterPassword,
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.visibility_off_outlined,
                            color: Color(0xffADB5BD))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return S.of(context).FieldRequired;
                      }
                      if (value.length < 8) {
                        return S.of(context).PasswordLength;
                      }
                      if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) {
                        return S.of(context).PasswordLowercase;
                      }
                      if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
                        return S.of(context).PasswordUppercase;
                      }
                      if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
                        return S.of(context).PasswordNumber;
                      }
                      if (!RegExp(r'(?=.*[@$!%*?&])').hasMatch(value)) {
                        return S.of(context).PasswordSpecialChar;
                      }
                      return null;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            checkColor: Colors.white,
                            side: const BorderSide(color: Colors.grey),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            onChanged: (value) {},
                          ),
                          CustomText(
                            fontSize: 13,
                            text: S.of(context).RememberMe,
                            textColor: AppColor.kMainColor,
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ForgetPasswordView(),
                              ));
                        },
                        child: CustomText(
                          text: S.of(context).ForgotPassword,
                          fontSize: 13,
                          textColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomMaterialButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {}
                    },
                    widget: CustomText(
                      text: S.of(context).SignIn,
                      customStyle: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade300,
                          endIndent: 20,
                          indent: 10,
                        ),
                      ),
                      CustomText(
                        text: S.of(context).OrSignInWith,
                        customStyle: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 13),
                        // textColor: Colors.grey,
                        // fontSize: 13,
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade300,
                          indent: 20,
                          endIndent: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomOutlinedButton(
                        onPressed: () {},
                        widget: Image.asset(
                          'assets/icons/google.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      CustomOutlinedButton(
                        onPressed: () {},
                        widget: const Icon(
                          Icons.apple_outlined,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  CustomTextAndTextButton(
                      textTitle: S.of(context).DontHaveAccount,
                      textButtonTitle: S.of(context).SignUp,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpView(),
                            ));
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

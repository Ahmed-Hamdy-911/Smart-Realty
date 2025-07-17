import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';
import 'package:smart_realty/features/auth/presentation/view/verifyWithCode/verify_code_view.dart';
import 'package:smart_realty/features/privacy/privacy_policy_view.dart';
import 'package:smart_realty/generated/l10n.dart';

import '../../../../../core/components/custom_back_icon.dart';
import '../../../../../core/widgets/custom_material_button.dart';
import '../widgets/custom_password_and_confirm_password_widget.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/custom_text_and_text_button.dart';
import '../../../../../core/widgets/custom_text_form.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const CustomBackIcon()),
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
                        text: S.of(context).CreateAccount,
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        textColor: AppColor.kMainColor,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      CustomText(
                        text: S.of(context).FillForm,
                        textColor: Colors.black54,
                        fontSize: 14,
                      ),
                    ],
                  )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  CustomText(
                    text: S.of(context).Name,
                    customStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 15),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  CustomTextFormField(
                    hintText: S.of(context).EnterName,
                    controller: _nameController,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      } else if (value.length < 3) {
                        return 'Too short';
                      } else if (value.startsWith(RegExp(r'^[0-9]'))) {
                        return 'Name should not start with number';
                      } else if (value.contains(RegExp(r'^.*[@/$!%*?&]'))) {
                        return 'Name should not contain special characters';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
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
                    controller: _emailController,
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
                  CustomPasswordAndConfirmPasswordWidget(
                      passwordController: _passwordController,
                      confirmPasswordController: _confirmPasswordController),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
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
                      CustomTextAndTextButton(
                        textTitle: S.of(context).AgreeWith,
                        textButtonTitle: S.of(context).TermsCondition,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PrivacyPolicyView()));
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  CustomMaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  //      VerificationEmailAuthView(
                                  //   email: "test@gmail.com",
                                  // ),
                                  const VerifyCodeView(
                                      email: "test@gmail.com")));
                    },
                    widget: CustomText(
                      text: S.of(context).SignUp,
                      customStyle: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  CustomTextAndTextButton(
                    textTitle: S.of(context).AlreadyHaveAccount,
                    textButtonTitle: S.of(context).SignIn,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

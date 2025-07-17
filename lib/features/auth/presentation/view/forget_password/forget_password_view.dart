import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';
import 'package:smart_realty/generated/l10n.dart';

import '../../../../../core/components/custom_back_icon.dart';
import '../../../../../core/widgets/custom_material_button.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/custom_text_form.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kMainBGColor,
        leading: const CustomBackIcon(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  CustomText(
                    text: S.of(context).ForgetPassword,
                    textColor: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  CustomText(
                    text: S.of(context).ResetPassword,
                    textColor: Colors.grey,
                    fontSize: 14,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CustomText(
              text: S.of(context).Email,
              customStyle: const TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Form(
              key: _formKey,
              child: CustomTextFormField(
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
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            CustomMaterialButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
              radius: 50,
              widget: CustomText(
                text: S.of(context).Send,
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

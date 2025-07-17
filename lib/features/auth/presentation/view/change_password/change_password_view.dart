import 'package:flutter/material.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';

import '../../../../../core/widgets/custom_material_button.dart';
import '../widgets/custom_password_and_confirm_password_widget.dart';
import '../../../../../core/widgets/custom_text.dart';

class ChangePasswordView extends StatelessWidget {
  ChangePasswordView({super.key});
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // leading: const CustomBackIcon(),
          ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const CustomText(
              text: 'New Password',
              textColor: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: const CustomText(
                textAlign: TextAlign.center,
                text:
                    "Your new password must be different from your old password.",
                textColor: Colors.grey,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Form(
              key: _formKey,
              child: CustomPasswordAndConfirmPasswordWidget(
                passwordController: _passwordController,
                confirmPasswordController: _confirmPasswordController,
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
              widget: const CustomText(
                text: "Create New Password",
                textColor: AppColor.KBlackColor,
                fontSize: 17,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smart_realty/generated/l10n.dart';

import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/custom_text_form.dart';

class CustomPasswordAndConfirmPasswordWidget extends StatefulWidget {
  const CustomPasswordAndConfirmPasswordWidget(
      {super.key,
      required this.passwordController,
      required this.confirmPasswordController});
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  @override
  State<CustomPasswordAndConfirmPasswordWidget> createState() =>
      _CustomPasswordAndConfirmPasswordWidgetState();
}

class _CustomPasswordAndConfirmPasswordWidgetState
    extends State<CustomPasswordAndConfirmPasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: S.of(context).Password,
          customStyle:
              Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 15),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        CustomTextFormField(
          hintText: S.of(context).EnterPassword,
          controller: widget.passwordController,
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
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        CustomText(
          text: S.of(context).ConfirmPassword,
          customStyle:
              Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 15),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        CustomTextFormField(
          hintText: S.of(context).EnterConfirmPassword,
          controller: widget.confirmPasswordController,
          keyboardType: TextInputType.text,
          obscureText: true,
          suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.visibility_off_outlined,
                  color: Color(0xffADB5BD))),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).FieldRequired;
            }
            if (value != widget.passwordController.text) {
              return S.of(context).PasswordsDoNotMatch;
            }
            return null;
          },
        ),
      ],
    );
  }
}

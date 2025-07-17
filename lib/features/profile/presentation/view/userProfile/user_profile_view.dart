import 'package:flutter/material.dart';
import 'package:smart_realty/core/components/custom_back_icon.dart';
import 'package:smart_realty/core/widgets/custom_text.dart';
import 'package:smart_realty/generated/l10n.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackIcon(),
        title: CustomText(text: S.of(context).Profile),
        centerTitle: true,
      ),
    );
  }
}

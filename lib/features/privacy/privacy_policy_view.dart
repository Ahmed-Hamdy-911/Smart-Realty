import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_realty/generated/l10n.dart';
import '../../core/widgets/custom_text.dart';
import 'package:flutter/services.dart';

class PrivacyPolicyView extends StatefulWidget {
  const PrivacyPolicyView({super.key});

  @override
  State<PrivacyPolicyView> createState() => _PrivacyPolicyViewState();
}

class _PrivacyPolicyViewState extends State<PrivacyPolicyView> {
  String privacyPolicyText = "";

  @override
  void initState() {
    super.initState();
    loadPrivacyPolicy();
  }

  Future<void> loadPrivacyPolicy() async {
    final String text = await rootBundle.loadString(
        Intl.getCurrentLocale() == 'ar'
            ? 'assets/files/smart_realty_privacy_ar.txt'
            : 'assets/files/smart_realty_privacy_en.txt');
    setState(() {
      privacyPolicyText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).PrivacyPolicy),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [CustomText(text: privacyPolicyText)],
          ),
        ),
      ),
    );
  }
}

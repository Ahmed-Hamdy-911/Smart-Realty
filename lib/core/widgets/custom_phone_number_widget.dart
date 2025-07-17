import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_realty/core/data/models/country_model.dart';
import 'package:smart_realty/core/widgets/custom_text_form.dart';

import '../../generated/l10n.dart';
import '../theme/colors/colors.dart';
import 'custom_text.dart';

class CustomPhoneField extends StatefulWidget {
  const CustomPhoneField({
    super.key,
    required this.phoneController,
    this.hintText,
    this.customBorder,
    this.filled,
    this.fillColor,
  });

  final TextEditingController phoneController;
  final InputBorder? customBorder;
  final String? hintText;
  final bool? filled;
  final Color? fillColor;

  @override
  State<CustomPhoneField> createState() => _CustomPhoneFieldState();
}

class _CustomPhoneFieldState extends State<CustomPhoneField> {
  List<CountryModel> countriesList = CountryModel.countriesList;
  late CountryModel selectedCountry;

  @override
  void initState() {
    super.initState();
    selectedCountry = countriesList.first;
    widget.phoneController.text = selectedCountry.phoneCode;
  }

  void _onCountryChanged(CountryModel? country) {
    if (country != null) {
      setState(() {
        selectedCountry = country;
        widget.phoneController.text = country.phoneCode;
      });
    }
  }

  String? _validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return S.of(context).FieldRequired;
    }
    final phoneRegex = RegExp(r'^\d+$');
    if (!phoneRegex.hasMatch(value)) {
      return S.of(context).invalidPhoneNumber;
    }
    if (value.length < selectedCountry.phoneNumberLength) {
      return S.of(context).shortPhoneNumber;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      fillColor: widget.fillColor,
      filled: widget.filled,
      hintText: "${S.of(context).EnterPhoneNumber} ${widget.hintText ?? ''}",
      customHintStyle:
          Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 14),
      helperText: S.of(context).phone_number_error,
      customBorder: widget.customBorder,
      keyboardType: TextInputType.phone,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      maxLength: selectedCountry.phoneNumberLength,
      validator: _validatePhoneNumber,
      prefixIcon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButton<CountryModel>(
              value: selectedCountry,
              onChanged: _onCountryChanged,
              items: countriesList.map((CountryModel country) {
                return DropdownMenuItem<CountryModel>(
                  value: country,
                  child: Row(
                    children: [
                      CustomText(
                        text: country.flag,
                        textColor: AppColor.KBlackColor,
                      ),
                      const SizedBox(width: 10),
                      CustomText(
                        text: country.phoneCode,
                        textColor: AppColor.KBlackColor,
                      ),
                    ],
                  ),
                );
              }).toList(),
              underline: Container(), 
            ),
          ],
        ),
      ),
    );
  }
}

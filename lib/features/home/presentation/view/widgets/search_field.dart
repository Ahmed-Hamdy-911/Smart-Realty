import 'package:flutter/material.dart';
import 'package:smart_realty/generated/l10n.dart';

import '../../../../../core/theme/colors/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    this.suffixIcon,
    this.onTap,
    this.focusNode,
  });
  final Widget? suffixIcon;
  final void Function()? onTap;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      focusNode: focusNode,
      decoration: InputDecoration(
        fillColor: AppColor.KWhiteColor,
        filled: true,
        contentPadding: const EdgeInsets.all(5),
        hintText: S.of(context).SearchForProperties,
        hintStyle:
            Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 15),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(
              color: AppColor.KWhiteColor,
            )),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(
              color: AppColor.KWhiteColor,
            )),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(
              color: AppColor.KWhiteColor,
            )),
        prefixIcon: const Icon(
          Icons.search,
          color: AppColor.kMainColor,
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}

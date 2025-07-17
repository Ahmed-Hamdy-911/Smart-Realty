import 'package:flutter/material.dart';
import 'package:smart_realty/core/constants/constants.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';
import 'package:smart_realty/core/widgets/segmented_filter_control_widget.dart';
import 'package:smart_realty/generated/l10n.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  String selectedCategory = AppConstant.selectedCategory;

  @override
  Widget build(BuildContext context) {
    List<String> localizedCategories = [
      S.of(context).all,
      S.of(context).newProperties,
      S.of(context).bestOffer,
      S.of(context).nearby,
      S.of(context).forSale,
      S.of(context).forRent,
      S.of(context).topRates,
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.055,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: localizedCategories.length,
        itemBuilder: (context, index) {
          final category = AppConstant.categoriesList[index];
          return SegmentedControl(
            borderColor: AppColor.KWhiteColor,
            onPressed: () {
              setState(() {
                selectedCategory = category;
              });
            },
            title: localizedCategories[index],
            isSelected: selectedCategory == category,
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          );
        },
      ),
    );
  }
}

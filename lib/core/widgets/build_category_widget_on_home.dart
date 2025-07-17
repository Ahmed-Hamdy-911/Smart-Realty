import 'package:flutter/material.dart';
import 'custom_text.dart';
import 'custom_text_and_text_button.dart';

class BuildCategoryWidgetOnHome extends StatefulWidget {
  const BuildCategoryWidgetOnHome({super.key});

  @override
  State<BuildCategoryWidgetOnHome> createState() =>
      _BuildCategoryWidgetOnHomeState();
}

class _BuildCategoryWidgetOnHomeState extends State<BuildCategoryWidgetOnHome> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: CustomText(
                text: 'Category',
                fontSize: 19,
                fontWeight: FontWeight.w400,
              ),
            ),
            CustomTextAndTextButton(
              textTitle: '',
              textButtonTitle: "See All",
              fontWeight: FontWeight.normal,
              fontSize: 16,
              decoration: TextDecoration.none,
              onPressed: () {
             
              },
            ),
          ],
        ),
        // SizedBox(
        //   height: screenHeight * 0.13, // Adjust height dynamically
        //   child: ListView.separated(
        //     scrollDirection: Axis.horizontal,
        //     itemBuilder: (context, index) {
        //       return CustomBuildCategoryItem(
        //         categoryModel: Constants.categories[index],
        //       );
        //     },
        //     separatorBuilder: (context, index) => SizedBox(
        //       width: MediaQuery.of(context).size.width * 0.02,
        //     ),
        //     itemCount: Constants.categories.length > 8
        //         ? 8
        //         : Constants.categories.length,
        //   ),
        // ),
      ],
    );
  }
}

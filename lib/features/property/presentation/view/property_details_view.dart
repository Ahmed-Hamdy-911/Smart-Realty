import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:smart_realty/core/components/custom_back_icon.dart';
import 'package:smart_realty/core/components/custom_build_style_of_icon.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';
import 'package:smart_realty/core/widgets/custom_material_button.dart';
import 'package:smart_realty/features/property/presentation/view/widgets/custom_carousel_slider.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../core/widgets/star_rating_widget.dart';
import 'widgets/custom_place_component.dart';

class PropertyDetailsView extends StatelessWidget {
  const PropertyDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        notificationPredicate: (notification) {
          return true;
        },
        leading: const CustomBackIcon(),
        centerTitle: true,
        title: const CustomText(
          text: ' Details',
          textColor: AppColor.KBlackColor,
        ),
        actions: [
          CustomBuildStyleIcon(
            icon: IconlyLight.bookmark,
            tooltip: "Bookmark",
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0).copyWith(bottom: 0),
        child: ListView(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            const CustomCarouselSlider(),
            SizedBox(
              height: height * 0.02,
            ),
            CustomText(
              text: "Christopher Street",
              customStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 22,
                  ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              children: [
                const Icon(IconlyLight.location, color: AppColor.kMainColor),
                const SizedBox(width: 5),
                Expanded(
                  child: CustomText(
                    text: "Southampton, New York",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    customStyle:
                        Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 18,
                            ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: r"$" '9.9M',
                  customStyle: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontSize: 24),
                ),
                const StarRating(iconSize: 20, rating: 3.8, ratingCount: 150),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const PropertyComponentOnDetailsView(),
            SizedBox(
              height: height * 0.02,
            ),
            const ExpandableTextWithButton(
              text:
                  "This house has a fenced backyard, covered patio, and designated parking. Inside, there's an open floor plan with a fully equipped kitchen and more. This is a long text to demonstrate the expandable functionality.",
              maxLines: 3,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            const UserInfoWidget(),
            SizedBox(
              height: height * 0.02,
            ),
            CustomMaterialButton(
              onPressed: () {},
              widget: CustomText(
                text: "Booking Now",
                customStyle: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 25,
          backgroundColor: AppColor.KGreyColor,
          child: Text(""),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Ahmed Hamdy",
                maxLines: 1,
                customStyle: Theme.of(context).textTheme.bodyMedium,
              ),
              CustomText(
                text: "Receptionist",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                customStyle: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
        CustomBuildStyleIcon(
          icon: IconlyLight.chat,
          backgroundColor: AppColor.kMainColor.withOpacity(0.1),
          tooltip: "Chat",
          onPressed: () {},
        ),
        const SizedBox(width: 8),
        CustomBuildStyleIcon(
          icon: IconlyLight.call,
          backgroundColor: AppColor.kMainColor.withOpacity(0.1),
          tooltip: "Call",
          onPressed: () {},
        ),
      ],
    );
  }
}

class ExpandableTextWithButton extends StatefulWidget {
  final String text;
  final String readMoreText;
  final int maxLines;
  final TextStyle textStyle;
  final TextStyle buttonTextStyle;

  const ExpandableTextWithButton({
    super.key,
    required this.text,
    this.readMoreText = 'Read More',
    this.maxLines = 3,
    this.textStyle = const TextStyle(fontSize: 14, color: Colors.black),
    this.buttonTextStyle = const TextStyle(
      fontSize: 14,
      color: Colors.blue,
    ),
  });

  @override
  State<ExpandableTextWithButton> createState() =>
      _ExpandableTextWithButtonState();
}

class _ExpandableTextWithButtonState extends State<ExpandableTextWithButton> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    TextPainter textPainter = TextPainter(
      text: TextSpan(text: widget.text, style: widget.textStyle),
      maxLines: widget.maxLines,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: MediaQuery.of(context).size.width - 50);

    bool isOverflowing = textPainter.didExceedMaxLines;

    return GestureDetector(
      onTap: () {
        if (!_isExpanded) {
          setState(() {
            _isExpanded = true;
          });
        }
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: _isExpanded ? widget.text : _getTruncatedText(),
              style:
                  Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 16),
            ),
            if (!_isExpanded && isOverflowing)
              TextSpan(
                text: " ${widget.readMoreText}",
                style: widget.buttonTextStyle,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    setState(() {
                      _isExpanded = true;
                    });
                  },
              ),
          ],
        ),
      ),
    );
  }

  String _getTruncatedText() {
    if (widget.text.length > 150) {
      return "${widget.text.substring(0, 150)}...";
    }
    return widget.text;
  }
}

class PropertyComponentOnDetailsView extends StatelessWidget {
  const PropertyComponentOnDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle? customStyle = Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(fontSize: 16, color: AppColor.kMainColor);
    EdgeInsetsGeometry? padding = const EdgeInsets.all(12);
    Color? bgColor = AppColor.kMainColor.withOpacity(0.1);
    Color? iconColor = AppColor.kMainColor;
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              CustomPropertyComponents(
                customStyle: customStyle,
                icon: Icons.bed_sharp,
                count: 6,
                nameOfComponent: "Beds",
                padding: padding,
                color: bgColor,
                iconColor: iconColor,
              ),
              const SizedBox(
                height: 6,
              ),
              CustomPropertyComponents(
                customStyle: customStyle,
                icon: Icons.bathtub_outlined,
                count: 3,
                nameOfComponent: 'Baths',
                padding: padding,
                color: bgColor,
                iconColor: iconColor,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        Expanded(
          child: Column(
            children: [
              CustomPropertyComponents(
                customStyle: customStyle,
                icon: Icons.kitchen_sharp,
                count: 2,
                iconSize: 24,
                nameOfComponent: 'Kitchen',
                padding: padding,
                color: bgColor,
                iconColor: iconColor,
              ),
              const SizedBox(
                height: 6,
              ),
              CustomPropertyComponents(
                customStyle: customStyle,
                icon: Icons.roofing_rounded,
                count: 2,
                nameOfComponent: "Floors",
                padding: padding,
                color: bgColor,
                iconColor: iconColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

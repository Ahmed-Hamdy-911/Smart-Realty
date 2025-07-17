import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:smart_realty/core/components/custom_build_style_of_icon.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';
import 'package:smart_realty/core/widgets/star_rating_widget.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../home/data/models/property_model.dart';
import '../property_details_view.dart';
import 'custom_place_component.dart';


class CustomPropertyCard extends StatelessWidget {
  const CustomPropertyCard({
    super.key,
    required this.propertyModel,
  });
  final PropertyModel propertyModel;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PropertyDetailsView(),
            ));
      },
      child: SizedBox(
        height: height * 0.39,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: height * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://www.loclweb.com/wp-content/uploads/2019/02/real-estate-website-design-background.jpg',
                      height: height * 0.25,
                      width: width,
                      fit: BoxFit.cover,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                        child: CircularProgressIndicator(
                          value: downloadProgress.progress,
                        ),
                      ),
                      errorWidget: (context, url, error) => const Icon(
                        Icons.error,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.02,
                  right: width * 0.02,
                  child: CustomBuildStyleIcon(
                      onPressed: () {},
                      icon: IconlyLight.bookmark,
                      tooltip: "Bookmark"),
                )
              ],
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Row(
              children: [
                Expanded(
                    child: CustomText(
                  text: 'Christopher Street',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  customStyle: Theme.of(context).textTheme.bodyMedium,
                )),
                const StarRating(rating: 3.8, ratingCount: 150)
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(children: [
              Expanded(
                child: Row(
                  children: [
                    const Icon(IconlyLight.location,
                        color: AppColor.kMainColor),
                    const SizedBox(width: 5),
                    CustomText(
                      text: 'Southampton, New York',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      customStyle: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
              ),
              CustomText(
                text: r"$" '9.9M',
                customStyle: Theme.of(context).textTheme.displayMedium,
              ),
            ]),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomPropertyComponents(
                  icon: Icons.bed_sharp,
                  count: 6,
                  nameOfComponent: "Beds",
                ),
                CustomPropertyComponents(
                  icon: Icons.bathtub_outlined,
                  count: 3,
                  nameOfComponent: 'Baths',
                ),
                CustomPropertyComponents(
                  icon: Icons.kitchen_sharp,
                  count: 2,
                  nameOfComponent: 'Kitchen',
                ),
                CustomPropertyComponents(
                  icon: Icons.roofing_rounded,
                  count: 2,
                  nameOfComponent: "Floors",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

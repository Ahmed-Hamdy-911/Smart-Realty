import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../../features/property/presentation/view/property_details_view.dart';
import '../theme/colors/colors.dart';
import 'custom_text.dart';

class CustomShowPropertyHorizontal extends StatelessWidget {
  const CustomShowPropertyHorizontal({
    super.key,
    this.widget,
    // required this.propertyModel,
    this.padding,
  });
  final Widget? widget;
  // final PropertyModel propertyModel;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PropertyDetailsView(),
            ));
      },
      child: SizedBox(
        height: size.height * 0.1,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: CachedNetworkImage(
                width: size.width * 0.22,
                height: size.height * 0.1,
                imageUrl:
                    'https://www.loclweb.com/wp-content/uploads/2019/02/real-estate-website-design-background.jpg',
                fit: BoxFit.cover,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
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
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Expanded(
                        child: CustomText(
                          text: "Christopher Street",
                          fontSize: 16,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textColor: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  // if (PropertyModel.size != null)
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            const Icon(IconlyLight.location,
                                color: AppColor.kMainColor),
                            const SizedBox(width: 5),
                            Expanded(
                              child: CustomText(
                                text: 'Southampton, New York',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                customStyle:
                                    Theme.of(context).textTheme.bodySmall,
                              ),
                            )
                          ],
                        ),
                      ),
                      CustomText(
                        text: r"$" '9.9M',
                        customStyle: Theme.of(context).textTheme.displayMedium,
                      ),
                    ],
                  ),
                  widget ?? const SizedBox()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

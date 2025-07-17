import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';
import 'package:smart_realty/features/home/presentation/view/widgets/image_full_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomCarouselSliderBannerBuilder();
  }
}

class CustomCarouselSliderBannerBuilder extends StatefulWidget {
  const CustomCarouselSliderBannerBuilder({super.key});

  @override
  State<CustomCarouselSliderBannerBuilder> createState() =>
      _CustomCarouselSliderBannerBuilderState();
}

class _CustomCarouselSliderBannerBuilderState
    extends State<CustomCarouselSliderBannerBuilder> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  List<String> images = [
    'https://www.loclweb.com/wp-content/uploads/2019/02/real-estate-website-design-background.jpg',
    'https://www.loclweb.com/wp-content/uploads/2019/02/real-estate-website-design-background.jpg',
    'https://www.loclweb.com/wp-content/uploads/2019/02/real-estate-website-design-background.jpg',
  ];
  int currentPage = 0;
  void handlePageChange(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder: (context, index, realIndex) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ImageFullScreenView(
                        images: images,
                        initialIndex: currentPage,
                        title: '',
                      ),
                    ));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    // imageUrl: cubit.bannerImages[index],
                    imageUrl: images[index],

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
            );
          },
          carouselController: _carouselController,
          options: CarouselOptions(
            viewportFraction: 1,
            height: height * 0.3,
            autoPlay: images.length > 1 ? true : false,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(seconds: 2),
            autoPlayCurve: Curves.easeInOut,
            onPageChanged: (index, reason) {
              // cubit.changeIndex(index);
              handlePageChange(index);
            },
          ),
        ),
        SizedBox(
          height: height * 0.015,
        ),
        if (images.length > 1)
          SmoothPageIndicator(
            controller: PageController(
              initialPage: currentPage,
            ),
            count: images.length,
            effect: ScaleEffect(
              activeDotColor: AppColor.kMainColor,
              dotColor: Colors.grey[300]!,
              spacing: 6,
              dotWidth: 10,
              dotHeight: 10,
            ),
            onDotClicked: (index) {
              _carouselController.animateToPage(index);
            },
          ),
      ],
    );
  }
}

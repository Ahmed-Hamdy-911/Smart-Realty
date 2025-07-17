import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';

import '../../../../../core/widgets/custom_text.dart';

class ImageFullScreenView extends StatefulWidget {
  final List<String>? images;
  final int? initialIndex;
  final String? mainImage;
  final bool isaSingleImage;
  final bool shareForUser;
  final String? title;
  const ImageFullScreenView({
    super.key,
    this.images,
    this.initialIndex,
    this.mainImage,
    this.isaSingleImage = false,
    this.title,
    this.shareForUser = false,
  });

  @override
  State<ImageFullScreenView> createState() => _ImageFullScreenViewState();
}

class _ImageFullScreenViewState extends State<ImageFullScreenView> {
  double _offset = 0.0; // Tracks the vertical drag offset
  double _opacity = 1.0; // Tracks the opacity of the image during drag

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
          preferredSize: const Size(0, kToolbarHeight),
          child: Opacity(
            opacity: _opacity,
            child: AppBar(
              backgroundColor: Colors.black,
              centerTitle: true,
              title: CustomText(
                text: widget.title ?? '',
                fontSize: 18,
                textColor: AppColor.KWhiteColor,
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  IconlyLight.arrow_left,
                  color: AppColor.KWhiteColor,
                ),
              ),
              actions: [
                if (widget.shareForUser)
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share_outlined,
                        color: AppColor.KWhiteColor),
                  ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(IconlyLight.download,
                      color: AppColor.KWhiteColor),
                ),
              ],
            ),
          )),
      body: GestureDetector(
        onVerticalDragUpdate: (details) {
          // Update the offset and opacity based on drag
          setState(() {
            _offset += details.primaryDelta!;
            _opacity = 1.0 -
                (_offset / 500).clamp(0.0, 1.0); // Adjust 500 for sensitivity
          });
        },
        onVerticalDragEnd: (details) {
          // If the drag offset exceeds a threshold, dismiss the screen
          if (_offset > 100) {
            Navigator.pop(context);
          } else {
            // Reset the offset and opacity if the drag is canceled
            setState(() {
              _offset = 0.0;
              _opacity = 1.0;
            });
          }
        },
        child: Transform.translate(
          offset: Offset(0, _offset), // Move the image based on drag
          child: Opacity(
            opacity: _opacity, // Fade the image based on drag
            child: Column(
              children: [
                if (!widget.isaSingleImage && widget.images != null)
                  Expanded(
                    child: PhotoViewGallery.builder(
                      scrollPhysics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.images!.length,
                      builder: (BuildContext context, int index) {
                        return PhotoViewGalleryPageOptions(
                          imageProvider:
                              CachedNetworkImageProvider(widget.images![index]),
                          initialScale: PhotoViewComputedScale.contained,
                          heroAttributes: PhotoViewHeroAttributes(
                              tag: widget.images![index]),
                        );
                      },
                      pageController:
                          PageController(initialPage: widget.initialIndex!),
                      onPageChanged: (index) {},
                      enableRotation: true,
                      loadingBuilder: (context, event) => Center(
                        child: CircularProgressIndicator(
                          value: event == null
                              ? 0
                              : event.cumulativeBytesLoaded /
                                  event.expectedTotalBytes!,
                        ),
                      ),
                    ),
                  ),
                if (widget.isaSingleImage)
                  Expanded(
                    child: PhotoView(
                      imageProvider: NetworkImage(widget.mainImage!),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

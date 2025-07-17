// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:iconly/iconly.dart';

// import '../theme/colors.dart';

// class CustomBuildUploadImage extends StatelessWidget {
//   const CustomBuildUploadImage({super.key, this.image, this.onTap});
//   final String? image;
//   final void Function()? onTap;

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     return Stack(
//       alignment: AlignmentDirectional.bottomEnd,
//       children: [
//         GestureDetector(
//           onTap: onTap,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(width * 0.18),
//             child: CircleAvatar(
//               radius: width * 0.18,
//               backgroundColor: Colors.grey[200],
//               backgroundImage: image != null
//                   ? CachedNetworkImageProvider(
//                       image!,
//                     )
//                   : null,
//               child: image == null
//                   ? Icon(
//                       IconlyBold.profile,
//                       size: width * 0.2,
//                       color: Colors.grey[600],
//                     )
//                   : null,
//             ),
//           ),
//         ),
//         CircleAvatar(
//           radius: width * 0.053,
//           backgroundColor: kMainBGColor,
//           child: CircleAvatar(
//             radius: width * 0.045,
//             backgroundColor: kMainColor,
//             child: IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 IconlyBroken.edit,
//                 color: kMainBGColor,
//                 size: 22,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

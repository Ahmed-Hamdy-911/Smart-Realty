// import 'package:flutter/material.dart';
// import '../../models/category_model.dart';
// import '../theme/colors.dart';
// import 'custom_text.dart';

// class CustomBuildCategoryItem extends StatelessWidget {
//   const CustomBuildCategoryItem({
//     super.key,
//     required this.categoryModel,
//   });

//   final CategoryModel categoryModel;

//   @override
//   Widget build(BuildContext context) {
//     final double screenWidth = MediaQuery.of(context).size.width;
//     final double screenHeight = MediaQuery.of(context).size.height;

//     return InkWell(
//       borderRadius: BorderRadius.circular(10),
//       onTap: () {},
//       child: Container(
//         width: screenWidth * 0.17,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(
//             color: kMainColor.withOpacity(0.3),
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (categoryModel.image != null)
//               Image(
//                 image: AssetImage(categoryModel.image!),
//                 height: screenHeight * 0.06,
//               )
//             else
//               CircleAvatar(
//                 radius: screenHeight * 0.035,
//                 backgroundColor: const Color(0xfff7f2ed),
//                 child: Icon(
//                   categoryModel.icon,
//                   color: kMainColor,
//                   size: 33,
//                 ),
//               ),
//             SizedBox(height: screenHeight * 0.01),
//             CustomText(
//               text: categoryModel.categoryName,
//               fontSize: 12,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

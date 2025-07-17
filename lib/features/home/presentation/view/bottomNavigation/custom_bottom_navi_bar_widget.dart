import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';
import 'package:smart_realty/features/home/presentation/manager/bottom_navigation_cubit/bottom_navigation_cubit.dart';

import 'custom_bottom_navi_item.dart';

class CustomBottomNaviBar extends StatelessWidget {
  const CustomBottomNaviBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return BlocBuilder<BottomNavigationCubit, int>(
      builder: (context, state) {
        return BottomAppBar(
          color: AppColor.kMainBGColor,
          shadowColor: AppColor.KBlackColor,
          elevation: 5,
          height: height * 0.08,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNaviItem(
                pageIndex: 0,
                iconSelected: IconlyBold.home,
                iconUnselected: IconlyLight.home,
                pageName: 'Home',
              ),
              CustomBottomNaviItem(
                pageIndex: 1,
                iconSelected: Icons.map,
                iconUnselected: Icons.map_outlined,
                pageName: 'Map',
              ),
              CustomBottomNaviItem(
                pageIndex: 2,
                iconSelected: IconlyBold.bookmark,
                iconUnselected: IconlyLight.bookmark,
                pageName: 'Bookmarks',
              ),
              CustomBottomNaviItem(
                pageIndex: 3,
                iconSelected: IconlyBold.profile,
                iconUnselected: IconlyLight.profile,
                pageName: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}

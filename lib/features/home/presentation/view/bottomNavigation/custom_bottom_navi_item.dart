import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';

import '../../manager/bottom_navigation_cubit/bottom_navigation_cubit.dart';

class CustomBottomNaviItem extends StatelessWidget {
  const CustomBottomNaviItem({
    super.key,
    required this.pageIndex,
    required this.iconUnselected,
    required this.iconSelected,
    this.pageName,
  });
  final int pageIndex;
  final String? pageName;
  final IconData iconUnselected;
  final IconData iconSelected;
  final int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<BottomNavigationCubit>(context);
    return IconButton(
      onPressed: () {
        cubit.changePage(pageIndex);
      },
      tooltip: pageName,
      icon: Icon(
        pageIndex == context.watch<BottomNavigationCubit>().state
            ? iconSelected
            : iconUnselected,
        color: pageIndex == context.watch<BottomNavigationCubit>().state
            ? AppColor.kMainColor
            : AppColor.KGreyColor,
        size:
            pageIndex == context.watch<BottomNavigationCubit>().state ? 30 : 27,
      ),
    );
  }
}

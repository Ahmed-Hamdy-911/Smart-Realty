import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_realty/features/bookmark/presentation/view/bookmark_view.dart';
import 'package:smart_realty/features/home/presentation/view/home_view.dart';
import 'package:smart_realty/features/map/presentation/view/map_view.dart';
import 'package:smart_realty/features/profile/presentation/view/profile_view.dart';

class BottomNavigationCubit extends Cubit<int> {
  BottomNavigationCubit() : super(0);
  List<Widget> screen = [
    const HomeBody(),
    const PropertiesOnMapView(),
    const BookmarkView(),
    const ProfileView(),
  ];
  int currentIndex = 0;
  void changePage(int index) {
    currentIndex = index;
    emit(index);
  }
}

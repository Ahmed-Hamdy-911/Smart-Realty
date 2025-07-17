import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';
import 'package:smart_realty/core/widgets/custom_text.dart';
import 'package:smart_realty/features/home/presentation/view/category/category_view.dart';
import 'package:smart_realty/features/home/presentation/view/widgets/app_bar_home.dart';
import 'package:smart_realty/features/home/presentation/view/bottomNavigation/custom_bottom_navi_bar_widget.dart';
import 'package:smart_realty/features/search/presentation/view/search_view.dart';
import 'package:smart_realty/generated/l10n.dart';
import '../../../../core/components/custom_build_style_of_icon.dart';
import '../manager/bottom_navigation_cubit/bottom_navigation_cubit.dart';
import '../../../property/presentation/view/property_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => BottomNavigationCubit(),
        child: const HomeBuilder());
  }
}

class HomeBuilder extends StatelessWidget {
  const HomeBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<BottomNavigationCubit>(context);
    return BlocBuilder<BottomNavigationCubit, int>(
      builder: (context, state) {
        return Scaffold(
          appBar: appBarHome(context),
          body: cubit.screen[cubit.currentIndex],
          bottomNavigationBar: const CustomBottomNaviBar(),
        );
      },
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0).copyWith(bottom: 0),
      child: CustomScrollView(
        physics: const ClampingScrollPhysics().applyTo(
          const ScrollPhysics(),
        ),
        slivers: [
          SliverToBoxAdapter(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchView()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppColor.KWhiteColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search,
                            color: AppColor.kMainColor,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CustomText(
                            text: S.of(context).SearchForProperties,
                            customStyle:
                                Theme.of(context).textTheme.headlineSmall,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                CustomBuildStyleIcon(
                  tooltip: S.of(context).Filter,
                  icon: IconlyLight.filter,
                  onPressed: () {},
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ),
          const SliverToBoxAdapter(child: CategoryView()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ),
          const PropertiesView()
        ],
      ),
    );
  }
}

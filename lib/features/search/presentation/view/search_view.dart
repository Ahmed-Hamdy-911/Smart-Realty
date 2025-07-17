import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:smart_realty/core/components/custom_back_icon.dart';
import 'package:smart_realty/core/widgets/custom_show_product_horizontal.dart';
import 'package:smart_realty/features/home/presentation/view/widgets/search_field.dart';
import 'package:smart_realty/generated/l10n.dart';
import '../../../../core/theme/colors/colors.dart';
import '../../../../core/widgets/custom_text.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final FocusNode _searchFocusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    _searchFocusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackIcon(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchField(
              focusNode: _searchFocusNode,
              suffixIcon: IconButton(
                  onPressed: () {
                    searchController.clear();
                  },
                  icon: const Icon(
                    IconlyBroken.close_square,
                    color: AppColor.kMainColor,
                  )),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const CustomShowPropertyHorizontal(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Divider(
              thickness: 1,
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CustomText(
              text: S.of(context).LAST_RESULT,
              letterSpacing: 1.7,
              textColor: Colors.grey,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            GestureDetector(
              onTap: () {},
              onLongPress: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // last result list
                  Row(
                    children: [
                      const Icon(
                        Icons.business_sharp,
                        color: AppColor.kMainColor,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      const CustomText(
                        text: "Christopher Street", // search result
                        fontWeight: FontWeight.bold,
                        textColor: Colors.black87,
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.006),
                  const CustomText(
                    text: "Southampton, New York", // search result
                    textColor: Colors.grey,
                    fontSize: 13,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

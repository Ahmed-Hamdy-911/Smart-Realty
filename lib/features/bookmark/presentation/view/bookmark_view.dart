import 'package:flutter/material.dart';
import 'package:smart_realty/core/widgets/custom_text.dart';
import 'package:smart_realty/generated/l10n.dart';

class BookmarkView extends StatelessWidget {
  const BookmarkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CustomText(
      text: S.of(context).NoBookmarksYet,
    ));
  }
}

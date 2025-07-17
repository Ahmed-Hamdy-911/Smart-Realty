import 'package:flutter/material.dart';
import 'package:smart_realty/core/widgets/segmented_filter_control_builder.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SegmentedFilterControlBuilder(
      segmentList: [],
    );
  }
}
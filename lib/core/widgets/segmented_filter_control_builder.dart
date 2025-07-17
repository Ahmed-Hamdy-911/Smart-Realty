import 'package:flutter/material.dart';
import 'segmented_filter_control_widget.dart';

class SegmentedFilterControlBuilder extends StatelessWidget {
  const SegmentedFilterControlBuilder(
      {super.key,
      required this.segmentList,
      this.radius,
      this.height,
      this.onPressed});
  final List<dynamic> segmentList;
  final double? radius;
  final double? height;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? MediaQuery.of(context).size.height * 0.06,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        scrollDirection: Axis.horizontal,
        itemCount: segmentList.length,
        itemBuilder: (context, index) => SegmentedControl(
          title: segmentList[index],
          isSelected: false,
          onPressed: () {},
          radius: radius,
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yalla/constants/colors.dart';
import '../../utils/responsive_util.dart';

class VisualIndicator extends StatelessWidget {
  final int itemCount;
  final int currentIndex;

  const VisualIndicator(
      {super.key, required this.itemCount, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return Container(
          width: ResponsiveUtil.calculateWidth(context, 7),
          height: ResponsiveUtil.calculateHeight(context, 7),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentIndex == index
                ? CustomColors.circleColor
                : CustomColors.barColor,
          ),
        );
      }),
    );
  }
}

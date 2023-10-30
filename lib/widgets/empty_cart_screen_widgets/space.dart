import 'package:flutter/material.dart';
import 'package:yalla/utils/responsive_util.dart';
import '../generic_widgets/custom_align_text.dart';

class SpaceWidget extends StatelessWidget {
  const SpaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAlignText(
      alignment: Alignment.topCenter,
      topPadding: ResponsiveUtil.calculateTopPosition(context, 800),
      child: const SizedBox(
        height: 35,
      ),
    );
  }
}

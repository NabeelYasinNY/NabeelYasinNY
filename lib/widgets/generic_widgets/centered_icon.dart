import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'custom_align_ui.dart';

class CenteredIconWidget extends StatelessWidget {
  final double topPadding;
  final double width;
  final double height;
  final String icon;

  const CenteredIconWidget({
    super.key,
    required this.topPadding,
    required this.width,
    required this.height,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAlignUI(
      alignment: Alignment.topCenter,
      topPadding: topPadding,
      width: width,
      height: height,
      child: SvgPicture.asset(
        icon,
        fit: BoxFit.contain,
      ),
    );
  }
}

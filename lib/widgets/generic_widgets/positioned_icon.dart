import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/responsive_util.dart';

class PositionedIconWidget extends StatelessWidget {
  final double leftPadding;
  final double topPadding;
  final double width;
  final double height;
  final String icon;

  const PositionedIconWidget({
    super.key,
    required this.leftPadding,
    required this.topPadding,
    required this.width,
    required this.height,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: leftPadding,
      top: topPadding,
      width: width,
      height: height,
      child: SizedBox(
        width: ResponsiveUtil.calculateWidth(context, width),
        height: ResponsiveUtil.calculateHeight(context, height),
        child: SvgPicture.asset(
          icon,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

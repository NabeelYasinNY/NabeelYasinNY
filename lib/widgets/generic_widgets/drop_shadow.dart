import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class DropShadowWidget extends StatelessWidget {
  final Widget child;
  final Color color;
  final BorderRadiusGeometry borderRadius;

  const DropShadowWidget({
    super.key,
    required this.child,
    required this.color,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
          boxShadow: const [
            BoxShadow(
              color: CustomColors.dropShadowColor1,
              offset: Offset(0, 0),
              blurRadius: 0,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: CustomColors.dropShadowColor1,
              offset: Offset(0, 1),
              blurRadius: 2,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: CustomColors.dropShadowColor3,
              offset: Offset(0, 3),
              blurRadius: 3,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: CustomColors.dropShadowColor4,
              offset: Offset(0, 7),
              blurRadius: 4,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: CustomColors.dropShadowColor5,
              offset: Offset(0, 12),
              blurRadius: 5,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: CustomColors.dropShadowColor6,
              offset: Offset(0, 19),
              blurRadius: 5,
              spreadRadius: 0,
            ),
          ]),
      child: child,
    );
  }
}

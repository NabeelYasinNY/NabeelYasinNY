import 'package:flutter/material.dart';

class CustomAlignText extends StatelessWidget {
  final AlignmentGeometry alignment;
  final double topPadding;
  final Widget child;

  const CustomAlignText({
    super.key,
    required this.alignment,
    required this.topPadding,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Padding(
        padding: EdgeInsets.only(
          top: topPadding,
        ),
        child: child,
      ),
    );
  }

}

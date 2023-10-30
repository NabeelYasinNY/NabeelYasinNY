import 'package:flutter/material.dart';

class CustomAlignUI extends StatelessWidget {
  final AlignmentGeometry alignment;
  final double topPadding;
  final double width;
  final double height;
  final Widget child;

  const CustomAlignUI({
    super.key,
    required this.alignment,
    required this.topPadding,
    required this.width,
    required this.height,
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
        child: SizedBox(
          width: width,
          height: height,
          child: child,
        ),
      ),
    );
  }

}

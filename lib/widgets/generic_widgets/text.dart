import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'custom_align_text.dart';

class TextWidget extends StatelessWidget {
  final double topPadding;
  final String text;
  final Color color;
  final double fontSize;
  final String fontFamily;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  const TextWidget({
    super.key,
    required this.topPadding,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontFamily,
    required this.fontWeight,
    required this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAlignText(
      alignment: Alignment.topCenter,
      topPadding: topPadding,
      child: Text(
        tr(text),
        textAlign: textAlign,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../../constants/font_sizes.dart';
import '../../constants/fonts.dart';
import '../../utils/responsive_util.dart';
import 'custom_align_ui.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final Alignment alignment;
  final double topPadding;
  final double width;
  final double height;
  final ValueChanged<String>? onChanged;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    required this.alignment,
    required this.topPadding,
    required this.width,
    required this.height,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAlignUI(
      alignment: alignment,
      topPadding: topPadding,
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: const Color(0xFFD7D6FF),
            width: 1.0,
          ),
        ),
        child: Center(
          child: TextField(
            controller: controller,
            onChanged: onChanged,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: const Color(0xFF8280BD),
                fontSize: ResponsiveUtil.calculateFontSize(
                    context, FontSize.textFieldFontSize),
                fontFamily: CustomFonts.googleSansRegular,
                fontWeight: FontWeight.w400,
              ),
              labelStyle: TextStyle(
                color: const Color(0xFFD7D6FF),
                fontSize: ResponsiveUtil.calculateFontSize(
                    context, FontSize.textFieldFontSize),
                fontFamily: CustomFonts.googleSansRegular,
                fontWeight: FontWeight.w400,
              ),
              contentPadding: const EdgeInsets.all(15.0),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

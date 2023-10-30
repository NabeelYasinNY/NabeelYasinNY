import 'package:flutter/material.dart';
import 'package:yalla/constants/font_sizes.dart';
import 'package:yalla/constants/fonts.dart';

import '../../utils/responsive_util.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color backgroundColor;
  final bool isButtonActive;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = Colors.blue,
    this.isButtonActive = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (isButtonActive) {
          onPressed();
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 3,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: ResponsiveUtil.calculateFontSize(
              context, FontSize.buttonFontSize),
          fontFamily: CustomFonts.sulphurPointRegular,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

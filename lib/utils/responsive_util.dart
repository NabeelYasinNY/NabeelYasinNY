import 'package:flutter/widgets.dart';

class ResponsiveUtil {

  static double referenceWidth = 393.0;
  static double referenceHeight = 852.0;

  static double calculateWidth(BuildContext context, double width) {
    return MediaQuery.of(context).size.width * (width / referenceWidth);
  }

  static double calculateHeight(BuildContext context, double height) {
    return MediaQuery.of(context).size.height * (height / referenceHeight);
  }

  static double calculateLeftPosition(BuildContext context, double leftPosition) {
    return MediaQuery.of(context).size.width * (leftPosition / referenceWidth);
  }

  static double calculateTopPosition(BuildContext context, double topPosition) {
    return (MediaQuery.of(context).size.height * (topPosition / referenceHeight)) - 30;
  }

  static double calculateFontSize(BuildContext context, double fontSize) {
    return MediaQuery.of(context).size.width * (fontSize / referenceWidth);
  }
}
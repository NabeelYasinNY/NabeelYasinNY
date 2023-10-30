import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/font_sizes.dart';
import '../../constants/fonts.dart';
import '../../constants/positions.dart';
import '../../constants/text_translation_key_strings.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/text.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextWidget(
      topPadding: ResponsiveUtil.calculateTopPosition(
          context, WelcomeScreenObjectsPositions.titleYPos),
      text: WelcomeScreenTranslationKeys.welcomeTitle,
      textAlign: TextAlign.center,
      color: CustomColors.titleColor,
      fontFamily: CustomFonts.googleSansRegular,
      fontSize:
          ResponsiveUtil.calculateFontSize(context, FontSize.titleFontSize),
      fontWeight: FontWeight.w700,
    );
  }
}

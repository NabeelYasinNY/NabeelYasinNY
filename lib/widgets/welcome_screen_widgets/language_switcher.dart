import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/font_sizes.dart';
import '../../constants/fonts.dart';
import '../../constants/positions.dart';
import '../../constants/text_translation_key_strings.dart';
import '../../screens/welcome/view_model/welcome_view_model.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/custom_align_text.dart';
import 'package:provider/provider.dart';

class LanguageSwitcherWidget extends StatelessWidget {
  const LanguageSwitcherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<WelcomeScreenViewModel>(context);
    return CustomAlignText(
      alignment: Alignment.topCenter,
      topPadding: ResponsiveUtil.calculateTopPosition(
          context, WelcomeScreenObjectsPositions.switchLanguageMessageYPos),
      child: GestureDetector(
        onTap: () {
          viewModel.changeLanguage(context);
        },
        child: Text(
          tr(WelcomeScreenTranslationKeys.switchLanguageMessage),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: CustomColors.switchLanguageTextColor,
            fontSize: ResponsiveUtil.calculateFontSize(
                context, FontSize.switchLanguageFontSize),
            fontFamily: CustomFonts.googleSansRegular,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

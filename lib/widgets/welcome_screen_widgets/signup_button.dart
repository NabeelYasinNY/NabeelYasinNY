import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/positions.dart';
import '../../constants/sizes.dart';
import '../../constants/text_translation_key_strings.dart';
import '../../utils/navigation_util.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/custom_align_ui.dart';
import '../generic_widgets/custom_button.dart';

class SignUpButtonWidget extends StatelessWidget {
  const SignUpButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAlignUI(
      alignment: Alignment.topCenter,
      topPadding: ResponsiveUtil.calculateTopPosition(
          context, WelcomeScreenObjectsPositions.signUpButtonYPos),
      width:
          ResponsiveUtil.calculateWidth(context, CommonSizes.buttonSize.width),
      height: ResponsiveUtil.calculateHeight(
          context, CommonSizes.buttonSize.height),
      child: CustomButton(
        onPressed: () {
          NavigationUtil.navigateToSignUpNumberScreen(context);
        },
        text: tr(WelcomeScreenTranslationKeys.signUpButtonText),
        isButtonActive: true,
        backgroundColor: CustomColors.activeButtonColor,
      ),
    );
  }
}

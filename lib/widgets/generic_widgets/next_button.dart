import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../constants/positions.dart';
import '../../constants/sizes.dart';
import '../../constants/text_translation_key_strings.dart';
import '../../utils/navigation_util.dart';
import '../../utils/responsive_util.dart';
import 'custom_align_ui.dart';
import 'custom_button.dart';

class NextButtonWidget extends StatelessWidget {
  final bool isButtonActive;
  final String phoneNumber;
  final Color buttonColor;

  const NextButtonWidget({
    super.key,
    required this.isButtonActive,
    required this.phoneNumber,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAlignUI(
      alignment: Alignment.topCenter,
      topPadding: ResponsiveUtil.calculateTopPosition(
          context, SignupScreenObjectsPositions.nextButtonYPos),
      width:
          ResponsiveUtil.calculateWidth(context, CommonSizes.buttonSize.width),
      height: ResponsiveUtil.calculateHeight(
          context, CommonSizes.buttonSize.height),
      child: CustomButton(
        text: tr(GenericTranslationKeys.nextButtonText),
        onPressed: () {
          if (isButtonActive) {
            NavigationUtil.navigateToSignUpEmailScreen(context, phoneNumber);
            //apiProvider.registerUser('nabeelyasin127@gmail.com', 'Nstp@123', 'Nabeel Yasin');
          }
        },
        backgroundColor: buttonColor,
        isButtonActive: isButtonActive,
      ),
    );
  }
}

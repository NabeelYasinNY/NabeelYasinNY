import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../utils/navigation_util.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/custom_align_ui.dart';
import '../generic_widgets/custom_button.dart';

class ContinueShoppingButtonWidget extends StatelessWidget {
  const ContinueShoppingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: CustomColors.activeButtonColor,
          width: 1.0,
        ),
      ),
      child: Center(
        child: Text(
          'CONTINUE SHOPPING',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: CustomColors.activeButtonColor,
              fontSize: ResponsiveUtil.calculateFontSize(context, 16),
              fontFamily: CustomFonts.sulphurPointRegular,
              fontWeight: FontWeight.w400,
              letterSpacing: 1,
              wordSpacing: 5),
        ),
      ),
    );
  }
}

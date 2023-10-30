import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../utils/navigation_util.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/custom_align_ui.dart';
import '../generic_widgets/custom_button.dart';

class ApplyButtonWidget extends StatelessWidget {
  const ApplyButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CustomColors.activeButtonColor,
          border: Border.all(
            color: CustomColors.activeButtonColor,
            width: 1.0,
          ),
        ),
        child: Center(
          child: Text(
            'APPLY',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: ResponsiveUtil.calculateFontSize(context, 18),
              fontFamily: CustomFonts.sulphurPointRegular,
              fontWeight: FontWeight.w400,
              letterSpacing: 1,
              wordSpacing: 5
            ),
          ),
        ),
    );
  }
}

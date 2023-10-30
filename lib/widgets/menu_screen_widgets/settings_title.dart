import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yalla/constants/colors.dart';

import '../../constants/fonts.dart';
import '../../utils/responsive_util.dart';

class SettingsTitleWidget extends StatelessWidget {
  const SettingsTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: ResponsiveUtil.calculateLeftPosition(context, 15),
      top: ResponsiveUtil.calculateTopPosition(context, 495),
      child: Text(
        tr('Settings'),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: CustomColors.cartCheckoutTitleColor,
          fontFamily: CustomFonts.productSansRegular,
          fontSize: ResponsiveUtil.calculateFontSize(context, 20),
          fontWeight: FontWeight.w700,
          height: ResponsiveUtil.calculateHeight(context, 30) /
              ResponsiveUtil.calculateWidth(context, 20),
        ),
      ),
    );
  }
}

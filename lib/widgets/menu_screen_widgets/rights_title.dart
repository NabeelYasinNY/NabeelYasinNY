import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yalla/constants/colors.dart';

import '../../constants/fonts.dart';
import '../../utils/responsive_util.dart';

class RightsReservedWidget extends StatelessWidget {
  const RightsReservedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: ResponsiveUtil.calculateLeftPosition(context, 15),
      top: ResponsiveUtil.calculateTopPosition(context, 920),
      child: Text(
        tr('©  Yalla. All right reserved.'),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: CustomColors.messageColor,
          fontFamily: CustomFonts.sulphurPointRegular,
          fontSize: ResponsiveUtil.calculateFontSize(context, 16),
          fontWeight: FontWeight.w400,
          height: ResponsiveUtil.calculateHeight(context, 24) /
              ResponsiveUtil.calculateWidth(context, 16),
        ),
      ),
    );
  }
}

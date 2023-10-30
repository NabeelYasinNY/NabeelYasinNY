import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yalla/constants/colors.dart';

import '../../constants/fonts.dart';
import '../../utils/responsive_util.dart';

class VersionWidget extends StatelessWidget {
  const VersionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: ResponsiveUtil.calculateLeftPosition(context, 317),
      top: ResponsiveUtil.calculateTopPosition(context, 920),
      child: Text(
        tr('Ver 1.0.'),
        textAlign: TextAlign.left,
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

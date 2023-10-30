import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yalla/utils/responsive_util.dart';
import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../generic_widgets/custom_align_text.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAlignText(
      alignment: Alignment.topCenter,
      topPadding: ResponsiveUtil.calculateTopPosition(context, 65),
      child: Text(
        tr('My orders'),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: CustomColors.cartCheckoutHeaderColor,
          fontSize: ResponsiveUtil.calculateFontSize(context, 24),
          fontFamily: CustomFonts.sulphurPointRegular,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

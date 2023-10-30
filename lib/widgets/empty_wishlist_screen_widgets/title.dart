import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yalla/utils/responsive_util.dart';
import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../generic_widgets/custom_align_text.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAlignText(
      alignment: Alignment.topCenter,
      topPadding: ResponsiveUtil.calculateTopPosition(context, 459),
      child: SizedBox(
        width: ResponsiveUtil.calculateWidth(context, 299),
        height: ResponsiveUtil.calculateHeight(context, 70),
        child: Text(
          tr("You haven't saved anything yet"),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: CustomColors.cartCheckoutTitleColor,
            fontSize: ResponsiveUtil.calculateFontSize(context, 24),
            fontFamily: CustomFonts.productSansRegular,
            fontWeight: FontWeight.w700,
            height: ResponsiveUtil.calculateHeight(context, 29.11) /
                ResponsiveUtil.calculateWidth(context, 24),
          ),
        ),
      ),
    );
  }
}

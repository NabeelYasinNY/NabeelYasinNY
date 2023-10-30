import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yalla/utils/responsive_util.dart';
import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../generic_widgets/custom_align_text.dart';

class QuoteWidget extends StatelessWidget {
  const QuoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAlignText(
      alignment: Alignment.topCenter,
      topPadding: ResponsiveUtil.calculateTopPosition(context, 778),
      child: Text(
        tr('Get Quote'),
        textAlign: TextAlign.center,
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: CustomColors.cartCheckoutQuoteColor,
          fontSize: ResponsiveUtil.calculateFontSize(context, 16),
          fontFamily: CustomFonts.productSansRegular,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

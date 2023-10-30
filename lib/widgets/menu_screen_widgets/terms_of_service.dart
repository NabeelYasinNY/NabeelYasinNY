import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yalla/constants/colors.dart';

import '../../constants/fonts.dart';
import '../../utils/responsive_util.dart';

class TermsOfServiceWidget extends StatelessWidget {
  const TermsOfServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: ResponsiveUtil.calculateLeftPosition(context, 17),
      top: ResponsiveUtil.calculateTopPosition(context, 865),
      child: Container(
        padding: const EdgeInsets.only(
          bottom: 1,
        ),
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: CustomColors.cartCheckoutQuoteColor,
          width: 1.5,
        ))),
        child: Text(
          tr('Terms of service'),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: CustomColors.cartCheckoutQuoteColor,
            fontFamily: CustomFonts.productSansRegular,
            fontSize: ResponsiveUtil.calculateFontSize(context, 16),
            fontWeight: FontWeight.w400,
            height: ResponsiveUtil.calculateHeight(context, 19.41) /
                ResponsiveUtil.calculateWidth(context, 16),
          ),
        ),
      ),
    );
  }
}

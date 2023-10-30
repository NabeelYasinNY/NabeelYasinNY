import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yalla/utils/responsive_util.dart';
import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../generic_widgets/custom_align_text.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAlignText(
      alignment: Alignment.topCenter,
      topPadding: ResponsiveUtil.calculateTopPosition(context, 505),
      child: Text(
        tr('Looks like your cart is empty'),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: CustomColors.messageColor,
          fontSize: ResponsiveUtil.calculateFontSize(context, 18),
          fontFamily: CustomFonts.productSansRegular,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

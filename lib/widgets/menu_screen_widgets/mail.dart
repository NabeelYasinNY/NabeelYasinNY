import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../../constants/images.dart';
import '../../constants/sizes.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/custom_align_ui.dart';
import '../generic_widgets/drop_shadow.dart';
import '../generic_widgets/positioned_icon.dart';

class MailWidget extends StatelessWidget {
  const MailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomAlignUI(
          alignment: Alignment.topCenter,
          topPadding: ResponsiveUtil.calculateTopPosition(context, 122),
          width: ResponsiveUtil.calculateWidth(
              context, CommonSizes.buttonSize.width),
          height: ResponsiveUtil.calculateHeight(context, 78),
          child: DropShadowWidget(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            child: Container(),
          ),
        ),
        PositionedIconWidget(
          leftPadding: ResponsiveUtil.calculateLeftPosition(context, 35),
          topPadding: ResponsiveUtil.calculateTopPosition(context, 146),
          width: ResponsiveUtil.calculateWidth(context, 30),
          height: ResponsiveUtil.calculateHeight(context, 30),
          icon: ImagePaths.logoIcon,
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 85),
          top: ResponsiveUtil.calculateTopPosition(context, 134),
          child: Text(
            tr('nabeel'),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: CustomColors.titleColor,
              fontFamily: CustomFonts.productSansRegular,
              fontSize: ResponsiveUtil.calculateFontSize(context, 18),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 85),
          top: ResponsiveUtil.calculateTopPosition(context, 161),
          child: Text(
            tr('nabeel.yasin@articares.com'),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: CustomColors.messageColor,
              fontFamily: CustomFonts.productSansRegular,
              fontSize: ResponsiveUtil.calculateFontSize(context, 18),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

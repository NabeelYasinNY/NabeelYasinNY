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

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomAlignUI(
          alignment: Alignment.topCenter,
          topPadding: ResponsiveUtil.calculateTopPosition(context, 740),
          width: ResponsiveUtil.calculateWidth(
              context, CommonSizes.buttonSize.width),
          height: ResponsiveUtil.calculateHeight(context, 50),
          child: DropShadowWidget(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            child: Container(),
          ),
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 35),
          top: ResponsiveUtil.calculateTopPosition(context, 748),
          child: Text(
            tr('Log out'),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: CustomColors.messageColor,
              fontFamily: CustomFonts.productSansRegular,
              fontSize: ResponsiveUtil.calculateFontSize(context, 18),
              fontWeight: FontWeight.w400,
              height: ResponsiveUtil.calculateHeight(context, 27) /
                  ResponsiveUtil.calculateWidth(context, 18),
            ),
          ),
        ),
        PositionedIconWidget(
          leftPadding: ResponsiveUtil.calculateLeftPosition(context, 345),
          topPadding: ResponsiveUtil.calculateTopPosition(context, 756),
          width: ResponsiveUtil.calculateWidth(context, 20),
          height: ResponsiveUtil.calculateHeight(context, 20),
          icon: ImagePaths.logout,
        ),
      ],
    );
  }
}

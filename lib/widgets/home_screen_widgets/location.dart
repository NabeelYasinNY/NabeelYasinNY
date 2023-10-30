import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yalla/constants/colors.dart';
import 'package:yalla/constants/images.dart';
import 'package:yalla/widgets/generic_widgets/positioned_icon.dart';
import '../../constants/fonts.dart';
import '../../constants/positions.dart';
import '../../constants/sizes.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/custom_align_ui.dart';
import '../generic_widgets/drop_shadow.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomAlignUI(
          alignment: Alignment.topCenter,
          topPadding: ResponsiveUtil.calculateTopPosition(
              context, HomeScreenObjectsPositions.locationYPos),
          width: ResponsiveUtil.calculateWidth(
              context, CommonSizes.buttonSize.width),
          height: ResponsiveUtil.calculateHeight(context, 60),
          child: DropShadowWidget(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            child: Container(),
          ),
        ),
        PositionedIconWidget(
          leftPadding: ResponsiveUtil.calculateLeftPosition(
              context, HomeScreenObjectsPositions.mapPos.dx),
          topPadding: ResponsiveUtil.calculateTopPosition(
              context, HomeScreenObjectsPositions.mapPos.dy),
          width: ResponsiveUtil.calculateWidth(
              context, HomeScreenObjectsSizes.mapIconSize.width),
          height: ResponsiveUtil.calculateHeight(
              context, HomeScreenObjectsSizes.mapIconSize.height),
          icon: ImagePaths.map,
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 65),
          top: ResponsiveUtil.calculateTopPosition(context, 140),
          child: Text(
            tr('Riyadh, Saudi Arabia'),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: CustomColors.activeButtonColor,
              fontFamily: CustomFonts.googleSansRegular,
              fontSize: ResponsiveUtil.calculateFontSize(context, 18),
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        PositionedIconWidget(
          leftPadding: ResponsiveUtil.calculateLeftPosition(
              context, HomeScreenObjectsPositions.arrowPos.dx),
          topPadding: ResponsiveUtil.calculateTopPosition(
              context, HomeScreenObjectsPositions.arrowPos.dy),
          width: ResponsiveUtil.calculateWidth(
              context, HomeScreenObjectsSizes.arrowIconSize.width),
          height: ResponsiveUtil.calculateHeight(
              context, HomeScreenObjectsSizes.arrowIconSize.height),
          icon: ImagePaths.arrow,
        ),
      ],
    );
  }
}

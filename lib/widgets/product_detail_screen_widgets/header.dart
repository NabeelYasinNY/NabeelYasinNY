import 'package:flutter/material.dart';
import 'package:yalla/constants/images.dart';
import 'package:yalla/utils/responsive_util.dart';
import 'package:yalla/widgets/generic_widgets/custom_align_ui.dart';
import 'package:yalla/widgets/generic_widgets/drop_shadow.dart';
import 'package:yalla/widgets/generic_widgets/positioned_icon.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomAlignUI(
          alignment: Alignment.topCenter,
          width: ResponsiveUtil.calculateWidth(context, 363),
          height: ResponsiveUtil.calculateHeight(context, 180),
          topPadding: ResponsiveUtil.calculateTopPosition(context, 107),
          child: DropShadowWidget(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            child: Container(),
          ),
        ),
        CustomAlignUI(
          alignment: Alignment.topCenter,
          width: ResponsiveUtil.calculateWidth(context, 146),
          height: ResponsiveUtil.calculateHeight(context, 146),
          topPadding: ResponsiveUtil.calculateTopPosition(context, 124),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImagePaths.redCow),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        PositionedIconWidget(
          width: ResponsiveUtil.calculateWidth(context, 20),
          height: ResponsiveUtil.calculateHeight(context, 20),
          topPadding: ResponsiveUtil.calculateTopPosition(context, 122),
          leftPadding: ResponsiveUtil.calculateLeftPosition(context, 343),
          icon: ImagePaths.share,
        ),
        PositionedIconWidget(
          width: ResponsiveUtil.calculateWidth(context, 20),
          height: ResponsiveUtil.calculateHeight(context, 20),
          topPadding: ResponsiveUtil.calculateTopPosition(context, 252),
          leftPadding: ResponsiveUtil.calculateLeftPosition(context, 343),
          icon: ImagePaths.emptyHeart,
        ),
      ],
    );
  }
}

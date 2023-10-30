import 'package:flutter/material.dart';

import '../../constants/images.dart';
import '../../constants/positions.dart';
import '../../constants/sizes.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/centered_icon.dart';

class MenuScreenLogoWidget extends StatelessWidget {
  const MenuScreenLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CenteredIconWidget(
      topPadding: ResponsiveUtil.calculateTopPosition(
          context, HomeScreenObjectsPositions.logoYPos),
      width: ResponsiveUtil.calculateWidth(context, CommonSizes.logoSize.width),
      height:
      ResponsiveUtil.calculateHeight(context, CommonSizes.logoSize.height),
      icon: ImagePaths.logo,
    );
  }
}

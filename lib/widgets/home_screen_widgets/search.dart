import 'package:flutter/material.dart';
import 'package:yalla/widgets/generic_widgets/positioned_icon.dart';

import '../../constants/images.dart';
import '../../constants/positions.dart';
import '../../constants/sizes.dart';
import '../../utils/responsive_util.dart';

class MainScreenSearchWidget extends StatelessWidget {
  const MainScreenSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PositionedIconWidget(
      leftPadding: ResponsiveUtil.calculateLeftPosition(
          context, HomeScreenObjectsPositions.searchPos.dx),
      topPadding: ResponsiveUtil.calculateTopPosition(
          context, HomeScreenObjectsPositions.searchPos.dy),
      width: ResponsiveUtil.calculateWidth(
          context, HomeScreenObjectsSizes.searchIconSize.width),
      height: ResponsiveUtil.calculateHeight(
          context, HomeScreenObjectsSizes.searchIconSize.height),
      icon: ImagePaths.search,
    );
  }
}

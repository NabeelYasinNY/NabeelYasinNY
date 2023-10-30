import 'package:flutter/material.dart';
import 'package:yalla/widgets/generic_widgets/positioned_icon.dart';
import '../../constants/images.dart';
import '../../constants/positions.dart';
import '../../constants/sizes.dart';
import '../../utils/responsive_util.dart';

class MainScreenNotificationWidget extends StatelessWidget {
  const MainScreenNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PositionedIconWidget(
      leftPadding: ResponsiveUtil.calculateLeftPosition(
          context, HomeScreenObjectsPositions.notificationPos.dx),
      topPadding: ResponsiveUtil.calculateTopPosition(
          context, HomeScreenObjectsPositions.notificationPos.dy),
      width: ResponsiveUtil.calculateWidth(
          context, HomeScreenObjectsSizes.notificationIconSize.width),
      height: ResponsiveUtil.calculateHeight(
          context, HomeScreenObjectsSizes.notificationIconSize.height),
      icon: ImagePaths.notification,
    );
  }
}

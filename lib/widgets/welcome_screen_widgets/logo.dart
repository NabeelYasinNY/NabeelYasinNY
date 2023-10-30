import 'package:flutter/material.dart';
import 'package:yalla/constants/images.dart';
import '../../constants/positions.dart';
import '../../constants/sizes.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/centered_icon.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CenteredIconWidget(
      topPadding: ResponsiveUtil.calculateTopPosition(
          context, WelcomeScreenObjectsPositions.logoYPos),
      width: ResponsiveUtil.calculateWidth(
          context, WelcomeScreenObjectsSizes.logoSize.width),
      height: ResponsiveUtil.calculateHeight(
          context, WelcomeScreenObjectsSizes.logoSize.height),
      icon: ImagePaths.logo,
    );
  }
}

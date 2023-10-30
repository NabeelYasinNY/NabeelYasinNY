import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/images.dart';
import '../../constants/positions.dart';
import '../../constants/sizes.dart';
import '../../utils/responsive_util.dart';

class BackgroundImagesWidget extends StatelessWidget {
  BackgroundImagesWidget({super.key});

  final List<Offset> backgroundReferencePositions = [
    WelcomeScreenObjectsPositions.coffeeMachinePos,
    WelcomeScreenObjectsPositions.foodTruckPos,
    WelcomeScreenObjectsPositions.dairyProductPos,
    WelcomeScreenObjectsPositions.refrigeratorPos,
    WelcomeScreenObjectsPositions.reusablePos,
    WelcomeScreenObjectsPositions.basketPos,
    WelcomeScreenObjectsPositions.kitchenToolPos,
    WelcomeScreenObjectsPositions.mixerPos,
  ];

  final List<String> backgroundAssetPaths = [
    ImagePaths.coffeeMachine,
    ImagePaths.foodTruck,
    ImagePaths.dairyProduct,
    ImagePaths.refrigerator,
    ImagePaths.reusable,
    ImagePaths.basket,
    ImagePaths.kitchenTool,
    ImagePaths.mixer,
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: backgroundReferencePositions.asMap().entries.map((entry) {
        final index = entry.key;
        final position = entry.value;

        return Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, position.dx),
          top: ResponsiveUtil.calculateTopPosition(context, position.dy),
          child: SizedBox(
            width: ResponsiveUtil.calculateWidth(
                context, WelcomeScreenObjectsSizes.backgroundObjectsSize.width),
            height: ResponsiveUtil.calculateHeight(context,
                WelcomeScreenObjectsSizes.backgroundObjectsSize.height),
            child: SvgPicture.asset(
              backgroundAssetPaths[index],
              fit: BoxFit.contain,
            ),
          ),
        );
      }).toList(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yalla/constants/images.dart';
import 'package:yalla/utils/responsive_util.dart';
import 'package:yalla/widgets/generic_widgets/positioned_icon.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PositionedIconWidget(
        leftPadding: ResponsiveUtil.calculateLeftPosition(context, 15),
        topPadding: ResponsiveUtil.calculateTopPosition(context, 67),
        width: ResponsiveUtil.calculateWidth(context, 20),
        height: ResponsiveUtil.calculateHeight(context, 20),
        icon: ImagePaths.back,
    );
  }
}

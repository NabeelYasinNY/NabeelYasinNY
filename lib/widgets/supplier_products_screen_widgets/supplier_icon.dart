import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla/utils/navigation_util.dart';

import '../../constants/colors.dart';
import '../../constants/images.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/positioned_icon.dart';

class SupplierIconWidget extends StatelessWidget {
  const SupplierIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: ResponsiveUtil.calculateLeftPosition(context, 15),
      top: ResponsiveUtil.calculateTopPosition(context, 72),
      child: GestureDetector(
        onTap: () {
          NavigationUtil.navigateToPreviousScreen(context);
        },
        child: SizedBox(
          width: ResponsiveUtil.calculateWidth(context, 20),
          height: ResponsiveUtil.calculateHeight(context, 20),
          child: SvgPicture.asset(ImagePaths.back,
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              fit: BoxFit.contain),
        ),
      ),
    );
  }
}

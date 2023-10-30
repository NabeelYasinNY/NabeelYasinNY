import 'package:flutter/material.dart';
import 'package:yalla/utils/responsive_util.dart';
import 'package:yalla/widgets/generic_widgets/custom_align_ui.dart';

import '../../constants/images.dart';
import '../generic_widgets/centered_icon.dart';

class EmptyCartIconWidget extends StatelessWidget {
  const EmptyCartIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CenteredIconWidget(
      topPadding: ResponsiveUtil.calculateTopPosition(
          context, 197),
      width: ResponsiveUtil.calculateWidth(context, 248),
      height:
      ResponsiveUtil.calculateHeight(context, 222),
      icon: ImagePaths.emptyCart,
    );
  }

}
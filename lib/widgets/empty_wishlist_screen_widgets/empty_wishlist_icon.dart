import 'package:flutter/material.dart';
import 'package:yalla/widgets/generic_widgets/centered_icon.dart';

import '../../constants/images.dart';
import '../../utils/responsive_util.dart';

class EmptyWishlistIcon extends StatelessWidget {
  const EmptyWishlistIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CenteredIconWidget(
      topPadding: ResponsiveUtil.calculateTopPosition(context, 216),
      width: ResponsiveUtil.calculateWidth(context, 203.48),
      height: ResponsiveUtil.calculateHeight(context, 216),
      icon: ImagePaths.emptyWishlistIcon,
    );
  }
}

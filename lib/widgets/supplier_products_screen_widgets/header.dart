import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../utils/responsive_util.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: ResponsiveUtil.calculateHeight(context, 167),
      decoration: const BoxDecoration(
        color: CustomColors.suppliersTabTextInactiveColor,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
      ),
    );
  }
}

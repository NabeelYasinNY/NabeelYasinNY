import 'package:flutter/material.dart';
import 'package:yalla/widgets/supplier_products_screen_widgets/supplier_name.dart';
import '../../constants/images.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/custom_align_ui.dart';
import '../generic_widgets/drop_shadow.dart';

class SupplierDetailWidget extends StatelessWidget {
  const SupplierDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAlignUI(
      alignment: Alignment.topCenter,
      topPadding: ResponsiveUtil.calculateTopPosition(context, 162),
      width: ResponsiveUtil.calculateWidth(context, 139),
      height: ResponsiveUtil.calculateHeight(context, 134),
      child: Column(
        children: [
          SizedBox(
            width: ResponsiveUtil.calculateWidth(context, 88),
            height: ResponsiveUtil.calculateHeight(context, 88),
            child: DropShadowWidget(
              borderRadius: BorderRadius.circular(110),
              color: Colors.transparent,
              child: Image.asset(
                ImagePaths.circle,
                width: ResponsiveUtil.calculateWidth(context, 88),
                height: ResponsiveUtil.calculateHeight(context, 88),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SupplierNameWidget(
            topPosition: 52,
            color: Colors.black,
            fontSize: 21,
            name: "Supplier Two",
          ),
        ],
      ),
    );
  }
}

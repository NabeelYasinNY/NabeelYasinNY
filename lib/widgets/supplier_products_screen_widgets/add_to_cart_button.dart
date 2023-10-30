import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yalla/constants/images.dart';
import 'package:yalla/widgets/generic_widgets/positioned_icon.dart';
import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../utils/navigation_util.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/custom_align_ui.dart';
import '../generic_widgets/custom_button.dart';

class AddToCartButtonWidget extends StatelessWidget {
  const AddToCartButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomAlignUI(
          alignment: Alignment.topCenter,
          topPadding: ResponsiveUtil.calculateTopPosition(context, 856),
          width: ResponsiveUtil.calculateWidth(
              context, CommonSizes.buttonSize.width),
          height: ResponsiveUtil.calculateHeight(
              context, CommonSizes.buttonSize.height),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: CustomColors.activeButtonColor,
              border: Border.all(
                color: CustomColors.activeButtonColor,
                width: 1.0,
              ),
            ),
          ),
        ),
        PositionedIconWidget(
          leftPadding: ResponsiveUtil.calculateLeftPosition(context, 35),
          topPadding: ResponsiveUtil.calculateTopPosition(context, 874),
          width: ResponsiveUtil.calculateWidth(context, 24),
          height: ResponsiveUtil.calculateHeight(context, 24),
          icon: ImagePaths.cartIcon,
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 69),
          top: ResponsiveUtil.calculateTopPosition(context, 877),
          child: Transform.translate(
            offset: const Offset(0, -2),
            child: Text(
              'ADD TO CART',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveUtil.calculateFontSize(context, 18),
                  fontFamily: CustomFonts.sulphurPointRegular,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                  wordSpacing: 5),
            ),
          ),
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 258),
          top: ResponsiveUtil.calculateTopPosition(context, 877),
          child: Transform.translate(
            offset: const Offset(0, 1.5),
            child: Text(
              'SAR 2,567.19',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveUtil.calculateFontSize(context, 14),
                  fontFamily: CustomFonts.sulphurPointRegular,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                  wordSpacing: 5),
            ),
          ),
        ),
      ],
    );
  }
}

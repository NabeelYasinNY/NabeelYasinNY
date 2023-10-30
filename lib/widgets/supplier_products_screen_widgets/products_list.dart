import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla/constants/images.dart';
import 'package:yalla/utils/navigation_util.dart';
import 'package:yalla/utils/responsive_util.dart';
import 'package:yalla/widgets/generic_widgets/custom_align_ui.dart';
import 'package:yalla/widgets/generic_widgets/drop_shadow.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class ProductsListWidget extends StatelessWidget {
  const ProductsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAlignUI(
      alignment: Alignment.topCenter,
      topPadding: ResponsiveUtil.calculateTopPosition(context, 448),
      width: MediaQuery.of(context).size.width,
      height: ResponsiveUtil.calculateHeight(context, 500),
      child: ListView(
        children: [
          GestureDetector(
            onTap: () {
              NavigationUtil.navigateToProductDetailScreen(context);
            },
            child: SizedBox(
              height: ResponsiveUtil.calculateHeight(context, 88),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Center(
                    child: SizedBox(
                      width: ResponsiveUtil.calculateWidth(context, 339),
                      height: ResponsiveUtil.calculateHeight(context, 72),
                      child: Row(
                        children: [
                          Container(
                            width: ResponsiveUtil.calculateWidth(context, 72),
                            height: ResponsiveUtil.calculateHeight(context, 72),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImagePaths.box),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ResponsiveUtil.calculateWidth(context, 20),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tr('Red Cow unsalted butter 25kg'),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: CustomColors.suppliersHeadingTextColor,
                                  fontFamily: CustomFonts.sulphurPointRegular,
                                  fontSize: ResponsiveUtil.calculateFontSize(
                                      context, 14),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height:
                                    ResponsiveUtil.calculateHeight(context, 8),
                              ),
                              Text(
                                tr('By Red Cow'),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: CustomColors.messageColor,
                                  fontFamily: CustomFonts.sulphurPointRegular,
                                  fontSize: ResponsiveUtil.calculateFontSize(
                                      context, 10),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height:
                                    ResponsiveUtil.calculateHeight(context, 8),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: ResponsiveUtil.calculateWidth(
                                          context, 223),
                                      height: ResponsiveUtil.calculateHeight(
                                          context, 24),
                                      child: Transform.translate(
                                        offset: const Offset(0, 1),
                                        child: Text(
                                          tr('SAR 2,767.19'),
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: CustomColors.circleColor,
                                            fontFamily:
                                                CustomFonts.sulphurPointRegular,
                                            fontSize: ResponsiveUtil
                                                .calculateFontSize(context, 16),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: ResponsiveUtil.calculateWidth(
                                          context, 24),
                                      height: ResponsiveUtil.calculateHeight(
                                          context, 24),
                                      child: SvgPicture.asset(
                                        ImagePaths.plus,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: ResponsiveUtil.calculateHeight(context, 16),
          ),
          GestureDetector(
            onTap: () {
              NavigationUtil.navigateToProductDetailScreen(context);
            },
            child: SizedBox(
              height: ResponsiveUtil.calculateHeight(context, 88),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Center(
                    child: SizedBox(
                      width: ResponsiveUtil.calculateWidth(context, 339),
                      height: ResponsiveUtil.calculateHeight(context, 72),
                      child: Row(
                        children: [
                          Container(
                            width: ResponsiveUtil.calculateWidth(context, 72),
                            height: ResponsiveUtil.calculateHeight(context, 72),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImagePaths.box),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ResponsiveUtil.calculateWidth(context, 20),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tr('Red Cow unsalted butter 25kg'),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: CustomColors.suppliersHeadingTextColor,
                                  fontFamily: CustomFonts.sulphurPointRegular,
                                  fontSize: ResponsiveUtil.calculateFontSize(
                                      context, 14),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height:
                                    ResponsiveUtil.calculateHeight(context, 8),
                              ),
                              Text(
                                tr('By Red Cow'),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: CustomColors.messageColor,
                                  fontFamily: CustomFonts.sulphurPointRegular,
                                  fontSize: ResponsiveUtil.calculateFontSize(
                                      context, 10),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height:
                                    ResponsiveUtil.calculateHeight(context, 8),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: ResponsiveUtil.calculateWidth(
                                          context, 223),
                                      height: ResponsiveUtil.calculateHeight(
                                          context, 24),
                                      child: Transform.translate(
                                        offset: const Offset(0, 1),
                                        child: Text(
                                          tr('SAR 2,767.19'),
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: CustomColors.circleColor,
                                            fontFamily:
                                                CustomFonts.sulphurPointRegular,
                                            fontSize: ResponsiveUtil
                                                .calculateFontSize(context, 16),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: ResponsiveUtil.calculateWidth(
                                          context, 24),
                                      height: ResponsiveUtil.calculateHeight(
                                          context, 24),
                                      child: SvgPicture.asset(
                                        ImagePaths.plus,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: ResponsiveUtil.calculateHeight(context, 16),
          ),
          GestureDetector(
            onTap: () {
              NavigationUtil.navigateToProductDetailScreen(context);
            },
            child: SizedBox(
              height: ResponsiveUtil.calculateHeight(context, 88),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Center(
                    child: SizedBox(
                      width: ResponsiveUtil.calculateWidth(context, 339),
                      height: ResponsiveUtil.calculateHeight(context, 72),
                      child: Row(
                        children: [
                          Container(
                            width: ResponsiveUtil.calculateWidth(context, 72),
                            height: ResponsiveUtil.calculateHeight(context, 72),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImagePaths.box),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ResponsiveUtil.calculateWidth(context, 20),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tr('Red Cow unsalted butter 25kg'),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: CustomColors.suppliersHeadingTextColor,
                                  fontFamily: CustomFonts.sulphurPointRegular,
                                  fontSize: ResponsiveUtil.calculateFontSize(
                                      context, 14),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height:
                                    ResponsiveUtil.calculateHeight(context, 8),
                              ),
                              Text(
                                tr('By Red Cow'),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: CustomColors.messageColor,
                                  fontFamily: CustomFonts.sulphurPointRegular,
                                  fontSize: ResponsiveUtil.calculateFontSize(
                                      context, 10),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height:
                                    ResponsiveUtil.calculateHeight(context, 8),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: ResponsiveUtil.calculateWidth(
                                          context, 223),
                                      height: ResponsiveUtil.calculateHeight(
                                          context, 24),
                                      child: Transform.translate(
                                        offset: const Offset(0, 1),
                                        child: Text(
                                          tr('SAR 2,767.19'),
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: CustomColors.circleColor,
                                            fontFamily:
                                                CustomFonts.sulphurPointRegular,
                                            fontSize: ResponsiveUtil
                                                .calculateFontSize(context, 16),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: ResponsiveUtil.calculateWidth(
                                          context, 24),
                                      height: ResponsiveUtil.calculateHeight(
                                          context, 24),
                                      child: SvgPicture.asset(
                                        ImagePaths.plus,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: ResponsiveUtil.calculateHeight(context, 16),
          ),
          GestureDetector(
            onTap: () {
              NavigationUtil.navigateToProductDetailScreen(context);
            },
            child: SizedBox(
              height: ResponsiveUtil.calculateHeight(context, 88),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Center(
                    child: SizedBox(
                      width: ResponsiveUtil.calculateWidth(context, 339),
                      height: ResponsiveUtil.calculateHeight(context, 72),
                      child: Row(
                        children: [
                          Container(
                            width: ResponsiveUtil.calculateWidth(context, 72),
                            height: ResponsiveUtil.calculateHeight(context, 72),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImagePaths.box),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ResponsiveUtil.calculateWidth(context, 20),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tr('Red Cow unsalted butter 25kg'),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: CustomColors.suppliersHeadingTextColor,
                                  fontFamily: CustomFonts.sulphurPointRegular,
                                  fontSize: ResponsiveUtil.calculateFontSize(
                                      context, 14),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height:
                                    ResponsiveUtil.calculateHeight(context, 8),
                              ),
                              Text(
                                tr('By Red Cow'),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: CustomColors.messageColor,
                                  fontFamily: CustomFonts.sulphurPointRegular,
                                  fontSize: ResponsiveUtil.calculateFontSize(
                                      context, 10),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height:
                                    ResponsiveUtil.calculateHeight(context, 8),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: ResponsiveUtil.calculateWidth(
                                          context, 223),
                                      height: ResponsiveUtil.calculateHeight(
                                          context, 24),
                                      child: Transform.translate(
                                        offset: const Offset(0, 1),
                                        child: Text(
                                          tr('SAR 2,767.19'),
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: CustomColors.circleColor,
                                            fontFamily:
                                                CustomFonts.sulphurPointRegular,
                                            fontSize: ResponsiveUtil
                                                .calculateFontSize(context, 16),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: ResponsiveUtil.calculateWidth(
                                          context, 24),
                                      height: ResponsiveUtil.calculateHeight(
                                          context, 24),
                                      child: SvgPicture.asset(
                                        ImagePaths.plus,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: ResponsiveUtil.calculateHeight(context, 16),
          ),
          GestureDetector(
            onTap: () {
              NavigationUtil.navigateToProductDetailScreen(context);
            },
            child: SizedBox(
              height: ResponsiveUtil.calculateHeight(context, 88),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Center(
                    child: SizedBox(
                      width: ResponsiveUtil.calculateWidth(context, 339),
                      height: ResponsiveUtil.calculateHeight(context, 72),
                      child: Row(
                        children: [
                          Container(
                            width: ResponsiveUtil.calculateWidth(context, 72),
                            height: ResponsiveUtil.calculateHeight(context, 72),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImagePaths.box),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ResponsiveUtil.calculateWidth(context, 20),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tr('Red Cow unsalted butter 25kg'),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: CustomColors.suppliersHeadingTextColor,
                                  fontFamily: CustomFonts.sulphurPointRegular,
                                  fontSize: ResponsiveUtil.calculateFontSize(
                                      context, 14),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height:
                                    ResponsiveUtil.calculateHeight(context, 8),
                              ),
                              Text(
                                tr('By Red Cow'),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: CustomColors.messageColor,
                                  fontFamily: CustomFonts.sulphurPointRegular,
                                  fontSize: ResponsiveUtil.calculateFontSize(
                                      context, 10),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height:
                                    ResponsiveUtil.calculateHeight(context, 8),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: ResponsiveUtil.calculateWidth(
                                          context, 223),
                                      height: ResponsiveUtil.calculateHeight(
                                          context, 24),
                                      child: Transform.translate(
                                        offset: const Offset(0, 1),
                                        child: Text(
                                          tr('SAR 2,767.19'),
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: CustomColors.circleColor,
                                            fontFamily:
                                                CustomFonts.sulphurPointRegular,
                                            fontSize: ResponsiveUtil
                                                .calculateFontSize(context, 16),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: ResponsiveUtil.calculateWidth(
                                          context, 24),
                                      height: ResponsiveUtil.calculateHeight(
                                          context, 24),
                                      child: SvgPicture.asset(
                                        ImagePaths.plus,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: ResponsiveUtil.calculateHeight(context, 16),
          ),
          GestureDetector(
            onTap: () {
              NavigationUtil.navigateToProductDetailScreen(context);
            },
            child: SizedBox(
              height: ResponsiveUtil.calculateHeight(context, 88),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Center(
                    child: SizedBox(
                      width: ResponsiveUtil.calculateWidth(context, 339),
                      height: ResponsiveUtil.calculateHeight(context, 72),
                      child: Row(
                        children: [
                          Container(
                            width: ResponsiveUtil.calculateWidth(context, 72),
                            height: ResponsiveUtil.calculateHeight(context, 72),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImagePaths.box),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ResponsiveUtil.calculateWidth(context, 20),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tr('Red Cow unsalted butter 25kg'),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: CustomColors.suppliersHeadingTextColor,
                                  fontFamily: CustomFonts.sulphurPointRegular,
                                  fontSize: ResponsiveUtil.calculateFontSize(
                                      context, 14),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height:
                                    ResponsiveUtil.calculateHeight(context, 8),
                              ),
                              Text(
                                tr('By Red Cow'),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: CustomColors.messageColor,
                                  fontFamily: CustomFonts.sulphurPointRegular,
                                  fontSize: ResponsiveUtil.calculateFontSize(
                                      context, 10),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height:
                                    ResponsiveUtil.calculateHeight(context, 8),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: ResponsiveUtil.calculateWidth(
                                          context, 223),
                                      height: ResponsiveUtil.calculateHeight(
                                          context, 24),
                                      child: Transform.translate(
                                        offset: const Offset(0, 1),
                                        child: Text(
                                          tr('SAR 2,767.19'),
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: CustomColors.circleColor,
                                            fontFamily:
                                                CustomFonts.sulphurPointRegular,
                                            fontSize: ResponsiveUtil
                                                .calculateFontSize(context, 16),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: ResponsiveUtil.calculateWidth(
                                          context, 24),
                                      height: ResponsiveUtil.calculateHeight(
                                          context, 24),
                                      child: SvgPicture.asset(
                                        ImagePaths.plus,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: ResponsiveUtil.calculateHeight(context, 16),
          ),
        ],
      ),
    );
  }
}

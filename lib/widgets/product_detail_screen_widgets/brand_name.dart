import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yalla/constants/images.dart';
import 'package:yalla/utils/responsive_util.dart';
import 'package:yalla/widgets/generic_widgets/centered_icon.dart';
import 'package:yalla/widgets/generic_widgets/custom_align_ui.dart';
import 'package:yalla/widgets/generic_widgets/drop_shadow.dart';
import 'package:yalla/widgets/generic_widgets/positioned_icon.dart';
import 'package:yalla/widgets/product_detail_screen_widgets/continue_shopping_button.dart';
import 'package:yalla/widgets/product_detail_screen_widgets/view_cart_button.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../supplier_products_screen_widgets/add_to_cart_button.dart';
import '../supplier_products_screen_widgets/apply_button.dart';

class BrandNameWidget extends StatelessWidget {
  const BrandNameWidget({super.key});

  void showBottomDrawer(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: ResponsiveUtil.calculateHeight(context, 494),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: ResponsiveUtil.calculateHeight(context, 246),
              child: Stack(
                children: [
                  CenteredIconWidget(
                    topPadding:
                        ResponsiveUtil.calculateTopPosition(context, 60),
                    width: ResponsiveUtil.calculateWidth(context, 178.74),
                    height: ResponsiveUtil.calculateHeight(context, 160),
                    icon: ImagePaths.cartAdded,
                  ),
                  CustomAlignUI(
                    topPadding:
                        ResponsiveUtil.calculateTopPosition(context, 235),
                    width: ResponsiveUtil.calculateWidth(context, 250),
                    height: ResponsiveUtil.calculateHeight(context, 160),
                    alignment: Alignment.topCenter,
                    child: Text(
                      tr('Successfully added to your cart!'),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: CustomColors.cartCheckoutHeaderColor,
                        fontFamily: CustomFonts.sulphurPointRegular,
                        fontSize: ResponsiveUtil.calculateFontSize(context, 24),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Positioned(
                    left: ResponsiveUtil.calculateLeftPosition(context, 15),
                    top: ResponsiveUtil.calculateTopPosition(context, 325),
                    child: Transform.translate(
                      offset: const Offset(0, 1),
                      child: Text(
                        tr('Red Cow Feta white cheese 19kg'),
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: CustomColors.cartCheckoutHeaderColor,
                          fontFamily: CustomFonts.sulphurPointRegular,
                          fontSize:
                              ResponsiveUtil.calculateFontSize(context, 13),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: ResponsiveUtil.calculateLeftPosition(context, 15),
                    top: ResponsiveUtil.calculateTopPosition(context, 325),
                    child: Transform.translate(
                      offset: const Offset(0, 1),
                      child: Text(
                        tr('SAR 2,767.19'),
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: CustomColors.circleColor,
                          fontFamily: CustomFonts.sulphurPointRegular,
                          fontSize:
                              ResponsiveUtil.calculateFontSize(context, 15),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: ResponsiveUtil.calculateTopPosition(context, 365),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: ResponsiveUtil.calculateHeight(context, 7),
                      decoration: BoxDecoration(
                        color: CustomColors.bottomBarIconsUnselectedColor
                            .withOpacity(0.3),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ResponsiveUtil.calculateLeftPosition(context, 15),
                    top: ResponsiveUtil.calculateTopPosition(context, 392),
                    child: Transform.translate(
                      offset: const Offset(0, 1),
                      child: Text(
                        tr('Cart total'),
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: CustomColors.cartCheckoutHeaderColor,
                          fontFamily: CustomFonts.sulphurPointRegular,
                          fontSize:
                              ResponsiveUtil.calculateFontSize(context, 13),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: ResponsiveUtil.calculateLeftPosition(context, 15),
                    top: ResponsiveUtil.calculateTopPosition(context, 392),
                    child: Transform.translate(
                      offset: const Offset(0, 1),
                      child: Text(
                        tr('SAR 2,767.19'),
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: CustomColors.circleColor,
                          fontFamily: CustomFonts.sulphurPointRegular,
                          fontSize:
                              ResponsiveUtil.calculateFontSize(context, 15),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ResponsiveUtil.calculateLeftPosition(context, 15),
                    top: ResponsiveUtil.calculateTopPosition(context, 440),
                    child: SizedBox(
                      width: ResponsiveUtil.calculateWidth(context, 171),
                      height: ResponsiveUtil.calculateHeight(context, 60),
                      child: const ContinueShoppingButtonWidget(),
                    ),
                  ),
                  Positioned(
                    left: ResponsiveUtil.calculateLeftPosition(context, 207),
                    top: ResponsiveUtil.calculateTopPosition(context, 440),
                    child: SizedBox(
                      width: ResponsiveUtil.calculateWidth(context, 171),
                      height: ResponsiveUtil.calculateHeight(context, 60),
                      child: const ViewCartButtonWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 15),
          top: ResponsiveUtil.calculateTopPosition(context, 307),
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40),
                bottom: Radius.circular(40),
              ),
            ),
            child: DropShadowWidget(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImagePaths.redCowCircle),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 65),
          top: ResponsiveUtil.calculateTopPosition(context, 317),
          child: Transform.translate(
            offset: const Offset(0, 1),
            child: Text(
              tr('By Red Cow'),
              textAlign: TextAlign.left,
              style: TextStyle(
                color: CustomColors.messageColor,
                fontFamily: CustomFonts.sulphurPointRegular,
                fontSize: ResponsiveUtil.calculateFontSize(context, 14),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 15),
          top: ResponsiveUtil.calculateTopPosition(context, 377),
          child: SizedBox(
            width: ResponsiveUtil.calculateWidth(context, 363),
            height: ResponsiveUtil.calculateHeight(context, 27),
            child: Transform.translate(
              offset: const Offset(0, 1),
              child: Text(
                tr('Red Cow Feta white cheese 19kg'),
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: CustomColors.cartCheckoutHeaderColor,
                  fontFamily: CustomFonts.sulphurPointRegular,
                  fontSize: ResponsiveUtil.calculateFontSize(context, 21),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 15),
          top: ResponsiveUtil.calculateTopPosition(context, 421),
          child: Transform.translate(
            offset: const Offset(0, 1),
            child: Text(
              tr('SAR 2,767.19'),
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: CustomColors.circleColor,
                fontFamily: CustomFonts.productSansRegular,
                fontSize: ResponsiveUtil.calculateFontSize(context, 20),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Positioned(
          top: ResponsiveUtil.calculateTopPosition(context, 471),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: ResponsiveUtil.calculateHeight(context, 7),
            decoration: BoxDecoration(
              color:
                  CustomColors.bottomBarIconsUnselectedColor.withOpacity(0.3),
            ),
          ),
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 15),
          top: ResponsiveUtil.calculateTopPosition(context, 498),
          child: Transform.translate(
            offset: const Offset(0, 1),
            child: Text(
              tr('Availability'),
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: CustomColors.cartCheckoutHeaderColor,
                fontFamily: CustomFonts.productSansRegular,
                fontSize: ResponsiveUtil.calculateFontSize(context, 15),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 324),
          top: ResponsiveUtil.calculateTopPosition(context, 498),
          child: Transform.translate(
            offset: const Offset(0, 1),
            child: Text(
              tr('In stock'),
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: CustomColors.circleColor,
                fontFamily: CustomFonts.productSansRegular,
                fontSize: ResponsiveUtil.calculateFontSize(context, 16),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 15),
          top: ResponsiveUtil.calculateTopPosition(context, 542),
          child: Transform.translate(
            offset: const Offset(0, 1),
            child: Text(
              tr('Sold by'),
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: CustomColors.cartCheckoutHeaderColor,
                fontFamily: CustomFonts.productSansRegular,
                fontSize: ResponsiveUtil.calculateFontSize(context, 16),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        PositionedIconWidget(
          leftPadding: ResponsiveUtil.calculateLeftPosition(context, 299),
          topPadding: ResponsiveUtil.calculateTopPosition(context, 544),
          width: ResponsiveUtil.calculateWidth(context, 20),
          height: ResponsiveUtil.calculateHeight(context, 20),
          icon: ImagePaths.tick,
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 324),
          top: ResponsiveUtil.calculateTopPosition(context, 542),
          child: Transform.translate(
            offset: const Offset(0, 1),
            child: Text(
              tr('Binzagr'),
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: CustomColors.circleColor,
                fontFamily: CustomFonts.productSansRegular,
                fontSize: ResponsiveUtil.calculateFontSize(context, 16),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Positioned(
          top: ResponsiveUtil.calculateTopPosition(context, 586),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: ResponsiveUtil.calculateHeight(context, 7),
            decoration: BoxDecoration(
              color:
                  CustomColors.bottomBarIconsUnselectedColor.withOpacity(0.3),
            ),
          ),
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 15),
          top: ResponsiveUtil.calculateTopPosition(context, 616),
          child: Transform.translate(
            offset: const Offset(0, 1),
            child: Text(
              tr('Quantity'),
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: CustomColors.cartCheckoutHeaderColor,
                fontFamily: CustomFonts.productSansRegular,
                fontSize: ResponsiveUtil.calculateFontSize(context, 16),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 280),
          top: ResponsiveUtil.calculateTopPosition(context, 613),
          child: Container(
            width: ResponsiveUtil.calculateWidth(context, 98),
            height: ResponsiveUtil.calculateHeight(context, 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color(0xFFD7D6FF),
                width: 1.0,
              ),
            ),
          ),
        ),
        PositionedIconWidget(
          leftPadding: ResponsiveUtil.calculateLeftPosition(context, 288),
          topPadding: ResponsiveUtil.calculateTopPosition(context, 621),
          width: ResponsiveUtil.calculateWidth(context, 14),
          height: ResponsiveUtil.calculateHeight(context, 14),
          icon: ImagePaths.minus,
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 325),
          top: ResponsiveUtil.calculateTopPosition(context, 617),
          child: Transform.translate(
            offset: const Offset(0, 1),
            child: Text(
              tr('1'),
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: CustomColors.cartCheckoutHeaderColor,
                fontFamily: CustomFonts.sulphurPointRegular,
                fontSize: ResponsiveUtil.calculateFontSize(context, 14),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        PositionedIconWidget(
          leftPadding: ResponsiveUtil.calculateLeftPosition(context, 356),
          topPadding: ResponsiveUtil.calculateTopPosition(context, 621),
          width: ResponsiveUtil.calculateWidth(context, 14),
          height: ResponsiveUtil.calculateHeight(context, 14),
          icon: ImagePaths.plusNew,
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 15),
          top: ResponsiveUtil.calculateTopPosition(context, 663),
          child: Container(
            width: ResponsiveUtil.calculateWidth(context, 363),
            height: ResponsiveUtil.calculateHeight(context, 29),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: CustomColors.bottomBarIconsUnselectedColor,
            ),
            child: Center(
              child: Text(
                tr('Delivered by Jul 30'),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: CustomFonts.sulphurPointRegular,
                  fontSize: ResponsiveUtil.calculateFontSize(context, 16),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 15),
          top: ResponsiveUtil.calculateTopPosition(context, 722),
          child: Transform.translate(
            offset: const Offset(0, 1),
            child: Text(
              tr('About brand'),
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: CustomColors.cartCheckoutHeaderColor,
                fontFamily: CustomFonts.productSansRegular,
                fontSize: ResponsiveUtil.calculateFontSize(context, 16),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 15),
          top: ResponsiveUtil.calculateTopPosition(context, 756),
          child: SizedBox(
            width: ResponsiveUtil.calculateWidth(context, 363),
            height: ResponsiveUtil.calculateHeight(context, 55),
            child: Transform.translate(
              offset: const Offset(0, 1),
              child: Text(
                tr('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: CustomColors.cartCheckoutTitleColor,
                  fontFamily: CustomFonts.productSansRegular,
                  fontSize: ResponsiveUtil.calculateFontSize(context, 13),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            showBottomDrawer(context);
          },
          child: const AddToCartButtonWidget(),
        ),
      ],
    );
  }
}

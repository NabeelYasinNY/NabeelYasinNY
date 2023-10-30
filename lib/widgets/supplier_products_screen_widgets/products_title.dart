import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla/constants/colors.dart';
import 'package:yalla/constants/images.dart';
import 'package:yalla/widgets/generic_widgets/custom_align_text.dart';
import 'package:yalla/widgets/supplier_products_screen_widgets/clear_button.dart';

import '../../constants/fonts.dart';
import '../../utils/responsive_util.dart';
import 'apply_button.dart';

class ProductsTitleWidget extends StatelessWidget {
  const ProductsTitleWidget({Key? key}) : super(key: key);

  final SingingCharacter _character = SingingCharacter.lafayette;

  void showBottomDrawer(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: ResponsiveUtil.calculateHeight(context, 246),
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
                  CustomAlignText(
                    topPadding:
                        ResponsiveUtil.calculateTopPosition(context, 47),
                    alignment: Alignment.topCenter,
                    child: Text(
                      tr('Sort by'),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: CustomColors.cartCheckoutHeaderColor,
                        fontFamily: CustomFonts.sulphurPointRegular,
                        fontSize: ResponsiveUtil.calculateFontSize(context, 20),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    left: ResponsiveUtil.calculateLeftPosition(context, 15),
                    top: ResponsiveUtil.calculateTopPosition(context, 94),
                    child: Row(
                      children: [
                        SizedBox(
                          width: ResponsiveUtil.calculateWidth(context, 15),
                          height: ResponsiveUtil.calculateHeight(context, 15),
                          child: SvgPicture.asset(ImagePaths.radio),
                        ),
                        SizedBox(
                          width: ResponsiveUtil.calculateWidth(context, 10),
                        ),
                        Text(
                          tr('Default'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.cartCheckoutHeaderColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 14),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: ResponsiveUtil.calculateLeftPosition(context, 15),
                    top: ResponsiveUtil.calculateTopPosition(context, 124),
                    child: Row(
                      children: [
                        SizedBox(
                          width: ResponsiveUtil.calculateWidth(context, 15),
                          height: ResponsiveUtil.calculateHeight(context, 15),
                          child: const Icon(Icons.radio_button_checked_sharp,
                              color:
                                  CustomColors.suppliersTabTextInactiveColor,
                          size: 18,
                          ),
                        ),
                        SizedBox(
                          width: ResponsiveUtil.calculateWidth(context, 10),
                        ),
                        Text(
                          tr('Price: High to Low'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.cartCheckoutHeaderColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 14),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: ResponsiveUtil.calculateLeftPosition(context, 15),
                    top: ResponsiveUtil.calculateTopPosition(context, 154),
                    child: Row(
                      children: [
                        SizedBox(
                          width: ResponsiveUtil.calculateWidth(context, 15),
                          height: ResponsiveUtil.calculateHeight(context, 15),
                          child: SvgPicture.asset(ImagePaths.radio),
                        ),
                        SizedBox(
                          width: ResponsiveUtil.calculateWidth(context, 10),
                        ),
                        Text(
                          tr('Price: Low to High'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.cartCheckoutHeaderColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 14),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: ResponsiveUtil.calculateLeftPosition(context, 15),
                    top: ResponsiveUtil.calculateTopPosition(context, 200),
                    child: SizedBox(
                      width: ResponsiveUtil.calculateWidth(context, 171),
                      height: ResponsiveUtil.calculateHeight(context, 60),
                      child: const ClearButtonWidget(),
                    ),
                  ),
                  Positioned(
                    left: ResponsiveUtil.calculateLeftPosition(context, 207),
                    top: ResponsiveUtil.calculateTopPosition(context, 200),
                    child: SizedBox(
                      width: ResponsiveUtil.calculateWidth(context, 171),
                      height: ResponsiveUtil.calculateHeight(context, 60),
                      child: const ApplyButtonWidget(),
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
    return Positioned(
      left: ResponsiveUtil.calculateLeftPosition(context, 15),
      top: ResponsiveUtil.calculateTopPosition(context, 328),
      child: SizedBox(
        width: ResponsiveUtil.calculateWidth(context, 371),
        height: ResponsiveUtil.calculateHeight(context, 32),
        child: Row(
          children: [
            SizedBox(
              width: ResponsiveUtil.calculateWidth(context, 270),
              height: ResponsiveUtil.calculateHeight(context, 27),
              child: Transform.translate(
                offset: const Offset(0, 1),
                child: Text(
                  tr('All products'),
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: CustomColors.suppliersHeadingTextColor,
                    fontFamily: CustomFonts.productSansRegular,
                    fontSize: ResponsiveUtil.calculateFontSize(context, 18),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: ResponsiveUtil.calculateWidth(context, 16),
            ),
            GestureDetector(
              onTap: () {
                showBottomDrawer(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImagePaths.sort,
                    width: ResponsiveUtil.calculateWidth(context, 16),
                    height: ResponsiveUtil.calculateHeight(context, 16),
                  ),
                  SizedBox(
                    width: ResponsiveUtil.calculateWidth(context, 4),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -1),
                    child: Text(
                      tr('SORT BY'),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: CustomColors.suppliersTabTextInactiveColor,
                        fontFamily: CustomFonts.sulphurPointRegular,
                        fontSize: ResponsiveUtil.calculateFontSize(context, 12),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

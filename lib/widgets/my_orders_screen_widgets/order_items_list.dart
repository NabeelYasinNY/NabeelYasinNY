import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yalla/constants/colors.dart';
import '../../constants/fonts.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/custom_align_ui.dart';
import '../generic_widgets/drop_shadow.dart';

class OrderItemsListWidget extends StatelessWidget {
  const OrderItemsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomAlignUI(
          alignment: Alignment.topCenter,
          topPadding: ResponsiveUtil.calculateTopPosition(context, 209),
          width: ResponsiveUtil.calculateWidth(context, 363),
          height: ResponsiveUtil.calculateHeight(context, 637),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                width: ResponsiveUtil.calculateWidth(context, 363),
                height: ResponsiveUtil.calculateHeight(context, 147),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Text(
                          tr('Aug 03, 2023'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 83),
                        child: Text(
                          tr('№ 100702113462'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 18),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 116),
                        child: Text(
                          tr('3 items'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 14),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 148),
                        child: Text(
                          tr('Total'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 65),
                        top: ResponsiveUtil.calculateTopPosition(context, 145),
                        child: Text(
                          tr('SAR 12,767.19'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 16),
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left:
                            ResponsiveUtil.calculateLeftPosition(context, 279),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Container(
                          width: ResponsiveUtil.calculateWidth(context, 64),
                          height: ResponsiveUtil.calculateHeight(context, 26),
                          decoration: BoxDecoration(
                            color: CustomColors.circleColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Center(
                            child: Text(
                              tr('Received'),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: CustomColors.circleColor,
                                fontFamily: CustomFonts.sulphurPointRegular,
                                fontSize: ResponsiveUtil.calculateFontSize(
                                    context, 10),
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveUtil.calculateHeight(context, 16),
              ),
              SizedBox(
                width: ResponsiveUtil.calculateWidth(context, 363),
                height: ResponsiveUtil.calculateHeight(context, 147),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Text(
                          tr('Aug 03, 2023'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 83),
                        child: Text(
                          tr('№ 100702113462'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 18),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 116),
                        child: Text(
                          tr('3 items'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 14),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 148),
                        child: Text(
                          tr('Total'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 65),
                        top: ResponsiveUtil.calculateTopPosition(context, 145),
                        child: Text(
                          tr('SAR 12,767.19'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 16),
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left:
                            ResponsiveUtil.calculateLeftPosition(context, 279),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Container(
                          width: ResponsiveUtil.calculateWidth(context, 64),
                          height: ResponsiveUtil.calculateHeight(context, 26),
                          decoration: BoxDecoration(
                            color: CustomColors.circleColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Center(
                            child: Text(
                              tr('Received'),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: CustomColors.circleColor,
                                fontFamily: CustomFonts.sulphurPointRegular,
                                fontSize: ResponsiveUtil.calculateFontSize(
                                    context, 10),
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveUtil.calculateHeight(context, 16),
              ),
              SizedBox(
                width: ResponsiveUtil.calculateWidth(context, 363),
                height: ResponsiveUtil.calculateHeight(context, 147),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Text(
                          tr('Aug 03, 2023'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 83),
                        child: Text(
                          tr('№ 100702113462'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 18),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 116),
                        child: Text(
                          tr('3 items'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 14),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 148),
                        child: Text(
                          tr('Total'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 65),
                        top: ResponsiveUtil.calculateTopPosition(context, 145),
                        child: Text(
                          tr('SAR 12,767.19'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 16),
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left:
                            ResponsiveUtil.calculateLeftPosition(context, 279),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Container(
                          width: ResponsiveUtil.calculateWidth(context, 64),
                          height: ResponsiveUtil.calculateHeight(context, 26),
                          decoration: BoxDecoration(
                            color: CustomColors.circleColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Center(
                            child: Text(
                              tr('Received'),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: CustomColors.circleColor,
                                fontFamily: CustomFonts.sulphurPointRegular,
                                fontSize: ResponsiveUtil.calculateFontSize(
                                    context, 10),
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveUtil.calculateHeight(context, 16),
              ),
              SizedBox(
                width: ResponsiveUtil.calculateWidth(context, 363),
                height: ResponsiveUtil.calculateHeight(context, 147),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Text(
                          tr('Aug 03, 2023'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 83),
                        child: Text(
                          tr('№ 100702113462'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 18),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 116),
                        child: Text(
                          tr('3 items'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 14),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 148),
                        child: Text(
                          tr('Total'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 65),
                        top: ResponsiveUtil.calculateTopPosition(context, 145),
                        child: Text(
                          tr('SAR 12,767.19'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 16),
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left:
                            ResponsiveUtil.calculateLeftPosition(context, 279),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Container(
                          width: ResponsiveUtil.calculateWidth(context, 64),
                          height: ResponsiveUtil.calculateHeight(context, 26),
                          decoration: BoxDecoration(
                            color: CustomColors.circleColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Center(
                            child: Text(
                              tr('Received'),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: CustomColors.circleColor,
                                fontFamily: CustomFonts.sulphurPointRegular,
                                fontSize: ResponsiveUtil.calculateFontSize(
                                    context, 10),
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveUtil.calculateHeight(context, 16),
              ),
              SizedBox(
                width: ResponsiveUtil.calculateWidth(context, 363),
                height: ResponsiveUtil.calculateHeight(context, 147),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Text(
                          tr('Aug 03, 2023'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 83),
                        child: Text(
                          tr('№ 100702113462'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 18),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 116),
                        child: Text(
                          tr('3 items'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 14),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 148),
                        child: Text(
                          tr('Total'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 65),
                        top: ResponsiveUtil.calculateTopPosition(context, 145),
                        child: Text(
                          tr('SAR 12,767.19'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 16),
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left:
                            ResponsiveUtil.calculateLeftPosition(context, 279),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Container(
                          width: ResponsiveUtil.calculateWidth(context, 64),
                          height: ResponsiveUtil.calculateHeight(context, 26),
                          decoration: BoxDecoration(
                            color: CustomColors.circleColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Center(
                            child: Text(
                              tr('Received'),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: CustomColors.circleColor,
                                fontFamily: CustomFonts.sulphurPointRegular,
                                fontSize: ResponsiveUtil.calculateFontSize(
                                    context, 10),
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveUtil.calculateHeight(context, 16),
              ),
              SizedBox(
                width: ResponsiveUtil.calculateWidth(context, 363),
                height: ResponsiveUtil.calculateHeight(context, 147),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Text(
                          tr('Aug 03, 2023'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 83),
                        child: Text(
                          tr('№ 100702113462'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 18),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 116),
                        child: Text(
                          tr('3 items'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 14),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 148),
                        child: Text(
                          tr('Total'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 65),
                        top: ResponsiveUtil.calculateTopPosition(context, 145),
                        child: Text(
                          tr('SAR 12,767.19'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 16),
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left:
                            ResponsiveUtil.calculateLeftPosition(context, 279),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Container(
                          width: ResponsiveUtil.calculateWidth(context, 64),
                          height: ResponsiveUtil.calculateHeight(context, 26),
                          decoration: BoxDecoration(
                            color: CustomColors.circleColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Center(
                            child: Text(
                              tr('Received'),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: CustomColors.circleColor,
                                fontFamily: CustomFonts.sulphurPointRegular,
                                fontSize: ResponsiveUtil.calculateFontSize(
                                    context, 10),
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveUtil.calculateHeight(context, 16),
              ),
              SizedBox(
                width: ResponsiveUtil.calculateWidth(context, 363),
                height: ResponsiveUtil.calculateHeight(context, 147),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Text(
                          tr('Aug 03, 2023'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 83),
                        child: Text(
                          tr('№ 100702113462'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 18),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 116),
                        child: Text(
                          tr('3 items'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 14),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 148),
                        child: Text(
                          tr('Total'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 65),
                        top: ResponsiveUtil.calculateTopPosition(context, 145),
                        child: Text(
                          tr('SAR 12,767.19'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 16),
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left:
                            ResponsiveUtil.calculateLeftPosition(context, 279),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Container(
                          width: ResponsiveUtil.calculateWidth(context, 64),
                          height: ResponsiveUtil.calculateHeight(context, 26),
                          decoration: BoxDecoration(
                            color: CustomColors.circleColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Center(
                            child: Text(
                              tr('Received'),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: CustomColors.circleColor,
                                fontFamily: CustomFonts.sulphurPointRegular,
                                fontSize: ResponsiveUtil.calculateFontSize(
                                    context, 10),
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveUtil.calculateHeight(context, 16),
              ),
              SizedBox(
                width: ResponsiveUtil.calculateWidth(context, 363),
                height: ResponsiveUtil.calculateHeight(context, 147),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Text(
                          tr('Aug 03, 2023'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 83),
                        child: Text(
                          tr('№ 100702113462'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 18),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 116),
                        child: Text(
                          tr('3 items'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 14),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 148),
                        child: Text(
                          tr('Total'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 65),
                        top: ResponsiveUtil.calculateTopPosition(context, 145),
                        child: Text(
                          tr('SAR 12,767.19'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 16),
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left:
                            ResponsiveUtil.calculateLeftPosition(context, 279),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Container(
                          width: ResponsiveUtil.calculateWidth(context, 64),
                          height: ResponsiveUtil.calculateHeight(context, 26),
                          decoration: BoxDecoration(
                            color: CustomColors.circleColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Center(
                            child: Text(
                              tr('Received'),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: CustomColors.circleColor,
                                fontFamily: CustomFonts.sulphurPointRegular,
                                fontSize: ResponsiveUtil.calculateFontSize(
                                    context, 10),
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveUtil.calculateHeight(context, 16),
              ),
              SizedBox(
                width: ResponsiveUtil.calculateWidth(context, 363),
                height: ResponsiveUtil.calculateHeight(context, 147),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Text(
                          tr('Aug 03, 2023'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 83),
                        child: Text(
                          tr('№ 100702113462'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 18),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 116),
                        child: Text(
                          tr('3 items'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 14),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 148),
                        child: Text(
                          tr('Total'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 65),
                        top: ResponsiveUtil.calculateTopPosition(context, 145),
                        child: Text(
                          tr('SAR 12,767.19'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 16),
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left:
                            ResponsiveUtil.calculateLeftPosition(context, 279),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Container(
                          width: ResponsiveUtil.calculateWidth(context, 64),
                          height: ResponsiveUtil.calculateHeight(context, 26),
                          decoration: BoxDecoration(
                            color: CustomColors.circleColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Center(
                            child: Text(
                              tr('Received'),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: CustomColors.circleColor,
                                fontFamily: CustomFonts.sulphurPointRegular,
                                fontSize: ResponsiveUtil.calculateFontSize(
                                    context, 10),
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveUtil.calculateHeight(context, 16),
              ),
              SizedBox(
                width: ResponsiveUtil.calculateWidth(context, 363),
                height: ResponsiveUtil.calculateHeight(context, 147),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Text(
                          tr('Aug 03, 2023'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 83),
                        child: Text(
                          tr('№ 100702113462'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 18),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 116),
                        child: Text(
                          tr('3 items'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 14),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 21),
                        top: ResponsiveUtil.calculateTopPosition(context, 148),
                        child: Text(
                          tr('Total'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.messageColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left: ResponsiveUtil.calculateLeftPosition(context, 65),
                        top: ResponsiveUtil.calculateTopPosition(context, 145),
                        child: Text(
                          tr('SAR 12,767.19'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CustomColors.suppliersHeadingTextColor,
                            fontFamily: CustomFonts.sulphurPointRegular,
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 16),
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Positioned(
                        left:
                            ResponsiveUtil.calculateLeftPosition(context, 279),
                        top: ResponsiveUtil.calculateTopPosition(context, 55),
                        child: Container(
                          width: ResponsiveUtil.calculateWidth(context, 64),
                          height: ResponsiveUtil.calculateHeight(context, 26),
                          decoration: BoxDecoration(
                            color: CustomColors.circleColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Center(
                            child: Text(
                              tr('Received'),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: CustomColors.circleColor,
                                fontFamily: CustomFonts.sulphurPointRegular,
                                fontSize: ResponsiveUtil.calculateFontSize(
                                    context, 10),
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveUtil.calculateHeight(context, 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

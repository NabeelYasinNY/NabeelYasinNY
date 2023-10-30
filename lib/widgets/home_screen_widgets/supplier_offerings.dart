import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yalla/constants/colors.dart';
import '../../constants/fonts.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/custom_align_ui.dart';
import '../generic_widgets/drop_shadow.dart';

class SupplierOfferingsWidget extends StatelessWidget {
  const SupplierOfferingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: ResponsiveUtil.calculateLeftPosition(context, 15),
          top: ResponsiveUtil.calculateTopPosition(context, 429),
          child: Text(
            tr('Suppliers'),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontFamily: CustomFonts.productSansRegular,
              fontSize: ResponsiveUtil.calculateFontSize(context, 20),
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        CustomAlignUI(
          alignment: Alignment.topCenter,
          topPadding: ResponsiveUtil.calculateTopPosition(context, 479),
          width: ResponsiveUtil.calculateWidth(context, 363),
          height: ResponsiveUtil.calculateHeight(context, 77),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 2, right: 8, top: 10, bottom: 10),
                child: SizedBox(
                  width: ResponsiveUtil.calculateWidth(context, 45),
                  child: DropShadowWidget(
                    borderRadius: BorderRadius.circular(10),
                    color: CustomColors.suppliersTabTextInactiveColor,
                    child: Center(
                      child: Text(
                        tr('All'),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: CustomFonts.sulphurPointRegular,
                          fontSize:
                              ResponsiveUtil.calculateFontSize(context, 12),
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8, top: 10, bottom: 10),
                child: SizedBox(
                  width: ResponsiveUtil.calculateWidth(context, 130),
                  child: DropShadowWidget(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        tr('Kitchen equipment'),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: CustomColors.activeButtonColor,
                          fontFamily: CustomFonts.sulphurPointRegular,
                          fontSize:
                              ResponsiveUtil.calculateFontSize(context, 12),
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8, top: 10, bottom: 10),
                child: SizedBox(
                  width: ResponsiveUtil.calculateWidth(context, 94),
                  child: DropShadowWidget(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        tr('Disposables'),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: CustomColors.activeButtonColor,
                          fontFamily: CustomFonts.sulphurPointRegular,
                          fontSize: ResponsiveUtil.calculateFontSize(
                            context,
                            12,
                          ),
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8, top: 10, bottom: 10),
                child: SizedBox(
                  width: ResponsiveUtil.calculateWidth(context, 97),
                  child: DropShadowWidget(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        tr('F&B supplies'),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: CustomColors.activeButtonColor,
                          fontFamily: CustomFonts.sulphurPointRegular,
                          fontSize:
                              ResponsiveUtil.calculateFontSize(context, 12),
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 2, top: 10, bottom: 10),
                child: SizedBox(
                  width: ResponsiveUtil.calculateWidth(context, 118),
                  child: DropShadowWidget(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        tr('Cafe equipment'),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: CustomColors.activeButtonColor,
                          fontFamily: CustomFonts.sulphurPointRegular,
                          fontSize:
                              ResponsiveUtil.calculateFontSize(context, 12),
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yalla/constants/colors.dart';
import '../../constants/fonts.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/custom_align_ui.dart';
import '../generic_widgets/drop_shadow.dart';

class OrderStatusWidget extends StatelessWidget {
  const OrderStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomAlignUI(
          alignment: Alignment.topCenter,
          topPadding: ResponsiveUtil.calculateTopPosition(context, 121),
          width: ResponsiveUtil.calculateWidth(context, 363),
          height: ResponsiveUtil.calculateHeight(context, 72),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 2, right: 8, top: 10, bottom: 10),
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(15),
                  color: CustomColors.suppliersTabTextInactiveColor,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: ResponsiveUtil.calculateHeight(context, 8),
                          horizontal:
                              ResponsiveUtil.calculateWidth(context, 10)),
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
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: ResponsiveUtil.calculateHeight(context, 8),
                          horizontal:
                              ResponsiveUtil.calculateWidth(context, 10)),
                      child: Text(
                        tr('Pending'),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: CustomColors.suppliersTabTextInactiveColor,
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
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: ResponsiveUtil.calculateHeight(context, 8),
                          horizontal:
                              ResponsiveUtil.calculateWidth(context, 10)),
                      child: Text(
                        tr('Confirmed'),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: CustomColors.suppliersTabTextInactiveColor,
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
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: ResponsiveUtil.calculateHeight(context, 8),
                          horizontal:
                              ResponsiveUtil.calculateWidth(context, 10)),
                      child: Text(
                        tr('Received'),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: CustomColors.suppliersTabTextInactiveColor,
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
                child: DropShadowWidget(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: ResponsiveUtil.calculateHeight(context, 8),
                          horizontal:
                              ResponsiveUtil.calculateWidth(context, 10)),
                      child: Text(
                        tr('Cancelled'),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: CustomColors.suppliersTabTextInactiveColor,
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

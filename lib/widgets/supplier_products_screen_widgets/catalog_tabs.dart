import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yalla/constants/colors.dart';
import 'package:yalla/utils/responsive_util.dart';
import 'package:yalla/widgets/generic_widgets/custom_align_ui.dart';

import '../../constants/fonts.dart';

class CatalogTabsWidget extends StatelessWidget {
  const CatalogTabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAlignUI(
      alignment: Alignment.topCenter,
      topPadding: ResponsiveUtil.calculateTopPosition(context, 386),
      width: ResponsiveUtil.calculateWidth(context, 363),
      height: ResponsiveUtil.calculateHeight(context, 36),
      child: Stack(
        children: [
          SizedBox(
            width: ResponsiveUtil.calculateWidth(context, 363),
            height: ResponsiveUtil.calculateHeight(context, 36),
            child: Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      tr('My Catalog'),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: CustomColors.messageColor,
                        fontFamily: CustomFonts.sulphurPointRegular,
                        fontSize: ResponsiveUtil.calculateFontSize(context, 16),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: ResponsiveUtil.calculateHeight(context, 34),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            tr('Public Catalog'),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: CustomColors.suppliersTabTextInactiveColor,
                              fontFamily: CustomFonts.sulphurPointRegular,
                              fontSize:
                                  ResponsiveUtil.calculateFontSize(context, 16),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: ResponsiveUtil.calculateHeight(context, 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1),
                            color: CustomColors.suppliersTabTextInactiveColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 36,
              child: Container(
                width: ResponsiveUtil.calculateWidth(context, 363),
                height: ResponsiveUtil.calculateHeight(context, 1),
                decoration: const BoxDecoration(
                    color: CustomColors.bottomBarIconsUnselectedColor),
              ))
        ],
      ),
    );
  }
}

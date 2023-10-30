import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yalla/constants/colors.dart';
import 'package:yalla/utils/navigation_util.dart';
import '../../constants/fonts.dart';
import '../../constants/images.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/custom_align_ui.dart';

class SupplierWidget extends StatelessWidget {
  const SupplierWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomAlignUI(
          alignment: Alignment.topCenter,
          topPadding: ResponsiveUtil.calculateTopPosition(context, 570),
          width: ResponsiveUtil.calculateWidth(context, 363),
          height: ResponsiveUtil.calculateHeight(context, 400),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              GestureDetector(
                onTap: () {
                  NavigationUtil.navigateToProductsScreen(context);
                },
                child: Row(
                  children: [
                    Container(
                      width: ResponsiveUtil.calculateWidth(context, 80),
                      height: ResponsiveUtil.calculateHeight(context, 80),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: CustomColors.borderColor,
                          width: ResponsiveUtil.calculateWidth(context, 1),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          width: ResponsiveUtil.calculateWidth(context, 70.75),
                          height: ResponsiveUtil.calculateHeight(context, 60),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImagePaths.supplier),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: ResponsiveUtil.calculateWidth(context, 9)),
                    SizedBox(
                        width: ResponsiveUtil.calculateWidth(context, 274),
                        height: ResponsiveUtil.calculateHeight(context, 80),
                        child: Center(
                          child: SizedBox(
                            width: ResponsiveUtil.calculateWidth(context, 274),
                            height: ResponsiveUtil.calculateHeight(context, 70),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: ResponsiveUtil.calculateWidth(
                                      context, 274),
                                  height: ResponsiveUtil.calculateHeight(
                                      context, 44),
                                  child: Text(
                                    tr('Ziena Food - شركة زينة لتجارة\nالأغذية'),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily:
                                          CustomFonts.sulphurPointRegular,
                                      fontSize:
                                          ResponsiveUtil.calculateFontSize(
                                              context, 16),
                                      fontWeight: FontWeight.w700,
                                      height: ResponsiveUtil.calculateHeight(
                                              context, 22.4) /
                                          ResponsiveUtil.calculateWidth(
                                              context, 16),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height: ResponsiveUtil.calculateWidth(
                                        context, 9)),
                                SizedBox(
                                  width: ResponsiveUtil.calculateWidth(
                                      context, 274),
                                  height: ResponsiveUtil.calculateHeight(
                                      context, 16),
                                  child: Text(
                                    tr('Kitchen equipment, Disposables, F&B supplies, Mar...'),
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: CustomColors.grayedText,
                                      fontFamily:
                                          CustomFonts.sulphurPointRegular,
                                      fontSize:
                                          ResponsiveUtil.calculateFontSize(
                                              context, 12),
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                width: ResponsiveUtil.calculateWidth(context, 363),
                height: ResponsiveUtil.calculateHeight(context, 20),
              ),
              GestureDetector(
                onTap: () {
                  NavigationUtil.navigateToProductsScreen(context);
                },
                child: Row(
                  children: [
                    Container(
                      width: ResponsiveUtil.calculateWidth(context, 80),
                      height: ResponsiveUtil.calculateHeight(context, 80),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: CustomColors.borderColor,
                          width: ResponsiveUtil.calculateWidth(context, 1),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          width: ResponsiveUtil.calculateWidth(context, 70.75),
                          height: ResponsiveUtil.calculateHeight(context, 60),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImagePaths.supplier),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: ResponsiveUtil.calculateWidth(context, 9)),
                    SizedBox(
                        width: ResponsiveUtil.calculateWidth(context, 274),
                        height: ResponsiveUtil.calculateHeight(context, 80),
                        child: Center(
                          child: SizedBox(
                            width: ResponsiveUtil.calculateWidth(context, 274),
                            height: ResponsiveUtil.calculateHeight(context, 70),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: ResponsiveUtil.calculateWidth(
                                      context, 274),
                                  height: ResponsiveUtil.calculateHeight(
                                      context, 44),
                                  child: Text(
                                    tr('Ziena Food - شركة زينة لتجارة\nالأغذية'),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily:
                                          CustomFonts.sulphurPointRegular,
                                      fontSize:
                                          ResponsiveUtil.calculateFontSize(
                                              context, 16),
                                      fontWeight: FontWeight.w700,
                                      height: ResponsiveUtil.calculateHeight(
                                              context, 22.4) /
                                          ResponsiveUtil.calculateWidth(
                                              context, 16),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height: ResponsiveUtil.calculateWidth(
                                        context, 9)),
                                SizedBox(
                                  width: ResponsiveUtil.calculateWidth(
                                      context, 274),
                                  height: ResponsiveUtil.calculateHeight(
                                      context, 16),
                                  child: Text(
                                    tr('Kitchen equipment, Disposables, F&B supplies, Mar...'),
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: CustomColors.grayedText,
                                      fontFamily:
                                          CustomFonts.sulphurPointRegular,
                                      fontSize:
                                          ResponsiveUtil.calculateFontSize(
                                              context, 12),
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                width: ResponsiveUtil.calculateWidth(context, 363),
                height: ResponsiveUtil.calculateHeight(context, 20),
              ),
              GestureDetector(
                onTap: () {
                  NavigationUtil.navigateToProductsScreen(context);
                },
                child: Row(
                  children: [
                    Container(
                      width: ResponsiveUtil.calculateWidth(context, 80),
                      height: ResponsiveUtil.calculateHeight(context, 80),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: CustomColors.borderColor,
                          width: ResponsiveUtil.calculateWidth(context, 1),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          width: ResponsiveUtil.calculateWidth(context, 70.75),
                          height: ResponsiveUtil.calculateHeight(context, 60),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImagePaths.supplier),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: ResponsiveUtil.calculateWidth(context, 9)),
                    SizedBox(
                        width: ResponsiveUtil.calculateWidth(context, 274),
                        height: ResponsiveUtil.calculateHeight(context, 80),
                        child: Center(
                          child: SizedBox(
                            width: ResponsiveUtil.calculateWidth(context, 274),
                            height: ResponsiveUtil.calculateHeight(context, 70),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: ResponsiveUtil.calculateWidth(
                                      context, 274),
                                  height: ResponsiveUtil.calculateHeight(
                                      context, 44),
                                  child: Text(
                                    tr('Ziena Food - شركة زينة لتجارة\nالأغذية'),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily:
                                          CustomFonts.sulphurPointRegular,
                                      fontSize:
                                          ResponsiveUtil.calculateFontSize(
                                              context, 16),
                                      fontWeight: FontWeight.w700,
                                      height: ResponsiveUtil.calculateHeight(
                                              context, 22.4) /
                                          ResponsiveUtil.calculateWidth(
                                              context, 16),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height: ResponsiveUtil.calculateWidth(
                                        context, 9)),
                                SizedBox(
                                  width: ResponsiveUtil.calculateWidth(
                                      context, 274),
                                  height: ResponsiveUtil.calculateHeight(
                                      context, 16),
                                  child: Text(
                                    tr('Kitchen equipment, Disposables, F&B supplies, Mar...'),
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: CustomColors.grayedText,
                                      fontFamily:
                                          CustomFonts.sulphurPointRegular,
                                      fontSize:
                                          ResponsiveUtil.calculateFontSize(
                                              context, 12),
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                width: ResponsiveUtil.calculateWidth(context, 363),
                height: ResponsiveUtil.calculateHeight(context, 20),
              ),
              GestureDetector(
                onTap: () {
                  NavigationUtil.navigateToProductsScreen(context);
                },
                child: Row(
                  children: [
                    Container(
                      width: ResponsiveUtil.calculateWidth(context, 80),
                      height: ResponsiveUtil.calculateHeight(context, 80),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: CustomColors.borderColor,
                          width: ResponsiveUtil.calculateWidth(context, 1),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          width: ResponsiveUtil.calculateWidth(context, 70.75),
                          height: ResponsiveUtil.calculateHeight(context, 60),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImagePaths.supplier),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: ResponsiveUtil.calculateWidth(context, 9)),
                    SizedBox(
                        width: ResponsiveUtil.calculateWidth(context, 274),
                        height: ResponsiveUtil.calculateHeight(context, 80),
                        child: Center(
                          child: SizedBox(
                            width: ResponsiveUtil.calculateWidth(context, 274),
                            height: ResponsiveUtil.calculateHeight(context, 70),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: ResponsiveUtil.calculateWidth(
                                      context, 274),
                                  height: ResponsiveUtil.calculateHeight(
                                      context, 44),
                                  child: Text(
                                    tr('Ziena Food - شركة زينة لتجارة\nالأغذية'),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily:
                                          CustomFonts.sulphurPointRegular,
                                      fontSize:
                                          ResponsiveUtil.calculateFontSize(
                                              context, 16),
                                      fontWeight: FontWeight.w700,
                                      height: ResponsiveUtil.calculateHeight(
                                              context, 22.4) /
                                          ResponsiveUtil.calculateWidth(
                                              context, 16),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height: ResponsiveUtil.calculateWidth(
                                        context, 9)),
                                SizedBox(
                                  width: ResponsiveUtil.calculateWidth(
                                      context, 274),
                                  height: ResponsiveUtil.calculateHeight(
                                      context, 16),
                                  child: Text(
                                    tr('Kitchen equipment, Disposables, F&B supplies, Mar...'),
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: CustomColors.grayedText,
                                      fontFamily:
                                          CustomFonts.sulphurPointRegular,
                                      fontSize:
                                          ResponsiveUtil.calculateFontSize(
                                              context, 12),
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                width: ResponsiveUtil.calculateWidth(context, 363),
                height: ResponsiveUtil.calculateHeight(context, 20),
              ),
              GestureDetector(
                onTap: () {
                  NavigationUtil.navigateToProductsScreen(context);
                },
                child: Row(
                  children: [
                    Container(
                      width: ResponsiveUtil.calculateWidth(context, 80),
                      height: ResponsiveUtil.calculateHeight(context, 80),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: CustomColors.borderColor,
                          width: ResponsiveUtil.calculateWidth(context, 1),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          width: ResponsiveUtil.calculateWidth(context, 70.75),
                          height: ResponsiveUtil.calculateHeight(context, 60),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImagePaths.supplier),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: ResponsiveUtil.calculateWidth(context, 9)),
                    SizedBox(
                        width: ResponsiveUtil.calculateWidth(context, 274),
                        height: ResponsiveUtil.calculateHeight(context, 80),
                        child: Center(
                          child: SizedBox(
                            width: ResponsiveUtil.calculateWidth(context, 274),
                            height: ResponsiveUtil.calculateHeight(context, 70),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: ResponsiveUtil.calculateWidth(
                                      context, 274),
                                  height: ResponsiveUtil.calculateHeight(
                                      context, 44),
                                  child: Text(
                                    tr('Ziena Food - شركة زينة لتجارة\nالأغذية'),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily:
                                          CustomFonts.sulphurPointRegular,
                                      fontSize:
                                          ResponsiveUtil.calculateFontSize(
                                              context, 16),
                                      fontWeight: FontWeight.w700,
                                      height: ResponsiveUtil.calculateHeight(
                                              context, 22.4) /
                                          ResponsiveUtil.calculateWidth(
                                              context, 16),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height: ResponsiveUtil.calculateWidth(
                                        context, 9)),
                                SizedBox(
                                  width: ResponsiveUtil.calculateWidth(
                                      context, 274),
                                  height: ResponsiveUtil.calculateHeight(
                                      context, 16),
                                  child: Text(
                                    tr('Kitchen equipment, Disposables, F&B supplies, Mar...'),
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: CustomColors.grayedText,
                                      fontFamily:
                                          CustomFonts.sulphurPointRegular,
                                      fontSize:
                                          ResponsiveUtil.calculateFontSize(
                                              context, 12),
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: ResponsiveUtil.calculateHeight(context, 20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

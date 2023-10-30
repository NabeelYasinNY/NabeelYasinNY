import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yalla/constants/images.dart';
import 'package:yalla/utils/responsive_util.dart';
import 'package:yalla/widgets/generic_widgets/custom_align_ui.dart';

import 'banner_indicator.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  BannerWidgetState createState() => BannerWidgetState();
}

class BannerWidgetState extends State<BannerWidget> {
  int _currentIndex = 0;

  List<Widget> buildBannerItems(BuildContext context) {
    return [
      FittedBox(
        fit: BoxFit.contain,
        child: Container(
          width: ResponsiveUtil.calculateWidth(context, 363),
          height: ResponsiveUtil.calculateHeight(context, 180),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(ImagePaths.rectangle_1),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      FittedBox(
        fit: BoxFit.contain,
        child: Container(
          width: ResponsiveUtil.calculateWidth(context, 363),
          height: ResponsiveUtil.calculateHeight(context, 180),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(ImagePaths.rectangle_1),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      FittedBox(
        fit: BoxFit.contain,
        child: Container(
          width: ResponsiveUtil.calculateWidth(context, 363),
          height: ResponsiveUtil.calculateHeight(context, 180),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(ImagePaths.rectangle_1),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      FittedBox(
        fit: BoxFit.contain,
        child: Container(
          width: ResponsiveUtil.calculateWidth(context, 363),
          height: ResponsiveUtil.calculateHeight(context, 180),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(ImagePaths.rectangle_1),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      FittedBox(
        fit: BoxFit.contain,
        child: Container(
          width: ResponsiveUtil.calculateWidth(context, 363),
          height: ResponsiveUtil.calculateHeight(context, 180),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(ImagePaths.rectangle_1),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomAlignUI(
          alignment: Alignment.topCenter,
          topPadding: ResponsiveUtil.calculateTopPosition(context, 202),
          width: ResponsiveUtil.calculateWidth(context, 363),
          height: ResponsiveUtil.calculateHeight(context, 197),
          child: CarouselSlider(
            items: buildBannerItems(context),
            options: CarouselOptions(
              enlargeCenterPage: true,
              enlargeFactor: 0.2,
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.easeInBack,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
        CustomAlignUI(
          alignment: Alignment.topCenter,
          topPadding: ResponsiveUtil.calculateTopPosition(context, 402),
          width: ResponsiveUtil.calculateWidth(context, 81),
          height: ResponsiveUtil.calculateHeight(context, 7),
          child: VisualIndicator(
            itemCount: 5,
            currentIndex: _currentIndex,
          ),
        )
      ],
    );
  }
}

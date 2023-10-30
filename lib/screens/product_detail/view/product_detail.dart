import 'package:flutter/material.dart';
import 'package:yalla/utils/responsive_util.dart';
import 'package:yalla/widgets/generic_widgets/scaffold.dart';
import 'package:yalla/widgets/product_detail_screen_widgets/continue_shopping_button.dart';
import 'package:yalla/widgets/product_detail_screen_widgets/view_cart_button.dart';
import '../../../widgets/product_detail_screen_widgets/back.dart';
import '../../../widgets/product_detail_screen_widgets/brand_name.dart';
import '../../../widgets/product_detail_screen_widgets/header.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: ResponsiveUtil.calculateHeight(context, 900),
            child: const Stack(
              children: [
                BackButtonWidget(),
                HeaderWidget(),
                BrandNameWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

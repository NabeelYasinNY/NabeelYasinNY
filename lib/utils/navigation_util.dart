import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/right_to_left_transition.dart';
import 'package:page_animation_transition/animations/scale_animation_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:yalla/screens/empty_wishlist/view/empty_wishlist_view.dart';
import 'package:yalla/screens/product_detail/view/product_detail.dart';
import 'package:yalla/widgets/home_screen_widgets/supplier_offerings.dart';
import 'package:yalla/widgets/home_screen_widgets/suppliers.dart';
import '../screens/login/view/login_view.dart';
import '../screens/signup/view/signup_number.dart';
import '../screens/signup_email/view/signup_email.dart';
import '../screens/supplier_products/view/supplier_products.dart';

class NavigationUtil {
  static void navigateToLogin(BuildContext context) {
    Navigator.of(context).push(PageAnimationTransition(
        page: const LoginScreen(),
        pageAnimationType: ScaleAnimationTransition()));
  }

  static void navigateToSignUpNumberScreen(BuildContext context) {
    Navigator.of(context).push(PageAnimationTransition(
        page: const SignUpNumberScreen(),
        pageAnimationType: ScaleAnimationTransition()));
  }

  static void navigateToSignUpEmailScreen(
      BuildContext context, String phoneNumber) {
    Navigator.of(context).push(PageAnimationTransition(
        page: SignupEmailScreen(phoneNumber),
        pageAnimationType: RightToLeftTransition()));
  }

  static void navigateToEmptyWishlistScreen(BuildContext context) {
    Navigator.of(context).push(PageAnimationTransition(
        page: const EmptyWishlistScreen(),
        pageAnimationType: ScaleAnimationTransition()));
  }

  static void navigateToProductsScreen(BuildContext context) {
    Navigator.of(context).push(PageAnimationTransition(
        page: const SupplierProductsWidget(),
        pageAnimationType: ScaleAnimationTransition()));
  }

  static void navigateToProductDetailScreen(BuildContext context) {
    Navigator.of(context).push(PageAnimationTransition(
        page: const ProductDetailView(),
        pageAnimationType: ScaleAnimationTransition()));
  }

  static void navigateToPreviousScreen(BuildContext context) {
    Navigator.of(context).pop(PageAnimationTransition(
        page: const SupplierWidget(),
        pageAnimationType: ScaleAnimationTransition()));
  }
}

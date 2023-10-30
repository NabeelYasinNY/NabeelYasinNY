import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla/constants/colors.dart';
import 'package:yalla/constants/images.dart';
import 'package:yalla/utils/responsive_util.dart';

import '../../empty_cart/view/empty_cart_view.dart';
import '../../home/view/home_view.dart';
import '../../menu/view/menu_view.dart';
import '../../my_orders/view/my_orders_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentIndex == 0
          ? const HomeScreen()
          : _currentIndex == 1
              ? const EmptyCartScreen()
              : _currentIndex == 2
                  ? const MyOrdersScreen()
                  : _currentIndex == 3
                      ? const MenuScreen()
                      : const Center(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _currentIndex == 0
                    ? CustomColors.bottomBarIconsSelectedColor
                    : CustomColors.bottomBarIconsUnselectedColor,
                BlendMode.srcIn,
              ),
              child: SvgPicture.asset(
                ImagePaths.homeIcon,
                width: ResponsiveUtil.calculateWidth(context, 24),
                height: ResponsiveUtil.calculateHeight(context, 24),
                fit: BoxFit.contain,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _currentIndex == 1
                    ? CustomColors.bottomBarIconsSelectedColor
                    : CustomColors.bottomBarIconsUnselectedColor,
                BlendMode.srcIn,
              ),
              child: SvgPicture.asset(
                ImagePaths.shoppingCartIcon,
                width: ResponsiveUtil.calculateWidth(context, 24),
                height: ResponsiveUtil.calculateHeight(context, 24),
                fit: BoxFit.contain,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _currentIndex == 2
                    ? CustomColors.bottomBarIconsSelectedColor
                    : CustomColors.bottomBarIconsUnselectedColor,
                BlendMode.srcIn,
              ),
              child: SvgPicture.asset(
                ImagePaths.shoppingBagIcon,
                width: ResponsiveUtil.calculateWidth(context, 24),
                height: ResponsiveUtil.calculateHeight(context, 24),
                fit: BoxFit.contain,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _currentIndex == 3
                    ? CustomColors.bottomBarIconsSelectedColor
                    : CustomColors.bottomBarIconsUnselectedColor,
                BlendMode.srcIn,
              ),
              child: SvgPicture.asset(
                ImagePaths.menuIcon,
                width: ResponsiveUtil.calculateWidth(context, 24),
                height: ResponsiveUtil.calculateHeight(context, 24),
                fit: BoxFit.contain,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

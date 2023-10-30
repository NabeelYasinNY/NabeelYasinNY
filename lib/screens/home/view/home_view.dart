import 'package:flutter/material.dart';

import '../../../widgets/home_screen_widgets/banner.dart';
import '../../../widgets/home_screen_widgets/location.dart';
import '../../../widgets/home_screen_widgets/logo.dart';
import '../../../widgets/home_screen_widgets/notification.dart';
import '../../../widgets/home_screen_widgets/search.dart';
import '../../../widgets/home_screen_widgets/supplier_offerings.dart';
import '../../../widgets/home_screen_widgets/suppliers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Set the background color to white
      child: const Stack(
        children: [
          MainScreenLogoWidget(),
          MainScreenNotificationWidget(),
          MainScreenSearchWidget(),
          LocationWidget(),
          BannerWidget(),
          SupplierOfferingsWidget(),
          SupplierWidget(),
        ],
      ),
    );
  }
}

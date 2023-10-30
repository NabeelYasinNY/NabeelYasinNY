import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yalla/constants/colors.dart';
import 'package:yalla/widgets/generic_widgets/scaffold.dart';
import 'package:yalla/widgets/supplier_products_screen_widgets/supplier_detail.dart';
import 'package:yalla/widgets/supplier_products_screen_widgets/supplier_name.dart';

import '../../../widgets/supplier_products_screen_widgets/catalog_tabs.dart';
import '../../../widgets/supplier_products_screen_widgets/header.dart';
import '../../../widgets/supplier_products_screen_widgets/products_list.dart';
import '../../../widgets/supplier_products_screen_widgets/products_title.dart';
import '../../../widgets/supplier_products_screen_widgets/supplier_icon.dart';

class SupplierProductsWidget extends StatelessWidget {
  const SupplierProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: CustomColors.suppliersTabTextInactiveColor,
        statusBarIconBrightness: Brightness.light,
      ),
      child: CommonScaffold(
        children: [
          HeaderWidget(),
          SupplierIconWidget(),
          SupplierNameWidget(
            topPosition: 65,
            color: Colors.white,
            name: "Supplier Two",
            fontSize: 24,
          ),
          SupplierDetailWidget(),
          ProductsTitleWidget(),
          CatalogTabsWidget(),
          ProductsListWidget(),
        ],
      ),
    );
  }
}

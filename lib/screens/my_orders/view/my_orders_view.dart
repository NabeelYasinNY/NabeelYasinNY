import 'package:flutter/cupertino.dart';
import 'package:yalla/widgets/generic_widgets/scaffold.dart';
import 'package:yalla/widgets/my_orders_screen_widgets/header.dart';

import '../../../widgets/my_orders_screen_widgets/order_items_list.dart';
import '../../../widgets/my_orders_screen_widgets/order_status.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonScaffold(
      children: [
        HeaderWidget(),
        OrderStatusWidget(),
        OrderItemsListWidget(),
      ],
    );
  }
}

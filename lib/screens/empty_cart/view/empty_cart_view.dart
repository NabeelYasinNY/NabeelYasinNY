import 'package:flutter/material.dart';
import 'package:yalla/widgets/empty_cart_screen_widgets/header.dart';
import 'package:yalla/widgets/generic_widgets/scaffold.dart';

import '../../../widgets/empty_cart_screen_widgets/continue_shopping_button.dart';
import '../../../widgets/empty_cart_screen_widgets/empty_cart_icon.dart';
import '../../../widgets/empty_cart_screen_widgets/message.dart';
import '../../../widgets/empty_cart_screen_widgets/quote.dart';
import '../../../widgets/empty_cart_screen_widgets/saved_items_button.dart';
import '../../../widgets/empty_cart_screen_widgets/space.dart';
import '../../../widgets/empty_cart_screen_widgets/title.dart';

class EmptyCartScreen extends StatelessWidget {
  const EmptyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            HeaderWidget(),
            EmptyCartIconWidget(),
            TitleWidget(),
            MessageWidget(),
            ContinueShoppingButtonWidget(),
            SavedItemsButtonWidget(),
            QuoteWidget(),
            SpaceWidget(),
          ],
        ),
      ),
    );
  }
}

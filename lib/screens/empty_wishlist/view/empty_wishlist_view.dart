import 'package:flutter/material.dart';
import 'package:yalla/widgets/empty_wishlist_screen_widgets/message.dart';
import 'package:yalla/widgets/generic_widgets/scaffold.dart';

import '../../../widgets/empty_wishlist_screen_widgets/start_shopping_button.dart';
import '../../../widgets/empty_wishlist_screen_widgets/title.dart';
import '../../../widgets/empty_wishlist_screen_widgets/back.dart';
import '../../../widgets/empty_wishlist_screen_widgets/empty_wishlist_icon.dart';
import '../../../widgets/empty_wishlist_screen_widgets/header.dart';

class EmptyWishlistScreen extends StatelessWidget {
  const EmptyWishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonScaffold(children: [
      HeaderWidget(),
      BackWidget(),
      EmptyWishlistIcon(),
      TitleWidget(),
      MessageWidget(),
      StartShoppingButtonWidget(),
    ]);
  }
}

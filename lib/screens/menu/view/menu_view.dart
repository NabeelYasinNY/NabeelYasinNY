import 'package:flutter/material.dart';
import 'package:yalla/utils/responsive_util.dart';
import 'package:yalla/widgets/menu_screen_widgets/account_title.dart';
import 'package:yalla/widgets/menu_screen_widgets/addresses.dart';

import '../../../widgets/menu_screen_widgets/contact_us.dart';
import '../../../widgets/menu_screen_widgets/help_title.dart';
import '../../../widgets/menu_screen_widgets/language.dart';
import '../../../widgets/menu_screen_widgets/logo.dart';
import '../../../widgets/menu_screen_widgets/logout.dart';
import '../../../widgets/menu_screen_widgets/mail.dart';
import '../../../widgets/menu_screen_widgets/privacy_policy.dart';
import '../../../widgets/menu_screen_widgets/profile.dart';
import '../../../widgets/menu_screen_widgets/rights_title.dart';
import '../../../widgets/menu_screen_widgets/settings_title.dart';
import '../../../widgets/menu_screen_widgets/terms_of_service.dart';
import '../../../widgets/menu_screen_widgets/version.dart';
import '../../../widgets/menu_screen_widgets/wishlist.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: ResponsiveUtil.calculateHeight(context, 950),
          child: const Stack(
            children: [
              MenuScreenLogoWidget(),
              MailWidget(),
              AccountTitleWidget(),
              ProfileWidget(),
              AddressesWidget(),
              WishlistWidget(),
              SettingsTitleWidget(),
              LanguageWidget(),
              HelpTitleWidget(),
              ContactUsWidget(),
              LogoutWidget(),
              TermsOfServiceWidget(),
              PrivacyPolicyWidget(),
              RightsReservedWidget(),
              VersionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yalla/widgets/generic_widgets/background.dart';
import 'package:yalla/widgets/generic_widgets/scaffold.dart';
import 'package:yalla/widgets/welcome_screen_widgets/background_images.dart';
import 'package:yalla/widgets/welcome_screen_widgets/language_switcher.dart';
import 'package:yalla/widgets/welcome_screen_widgets/login_button.dart';
import 'package:yalla/widgets/welcome_screen_widgets/message_text.dart';
import 'package:yalla/widgets/welcome_screen_widgets/signup_button.dart';
import 'package:yalla/widgets/welcome_screen_widgets/title_text.dart';
import '../../../widgets/welcome_screen_widgets/logo.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    return CommonScaffold(children: [
      const BackgroundWidget(),
      BackgroundImagesWidget(),
      const AppLogoWidget(),
      const TitleTextWidget(),
      const MessageTextWidget(),
      const LoginButtonWidget(),
      const SignUpButtonWidget(),
      const LanguageSwitcherWidget(),
    ]);
  }
}

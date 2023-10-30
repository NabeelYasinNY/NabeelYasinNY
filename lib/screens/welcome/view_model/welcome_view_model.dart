import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class WelcomeScreenViewModel extends ChangeNotifier {

  void changeLanguage(BuildContext context) async {
      if(context.locale.languageCode == 'en') {
        await EasyLocalization.of(context)?.setLocale(const Locale('ar', 'SA'));
      } else if(context.locale.languageCode == 'ar') {
        await EasyLocalization.of(context)?.setLocale(const Locale('en', 'US'));
      }

      await WidgetsBinding.instance.performReassemble();
      notifyListeners();
  }
}
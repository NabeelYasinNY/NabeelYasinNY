import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:yalla/screens/home/view/home_view.dart';
import 'package:yalla/screens/product_detail/view/product_detail.dart';
import 'package:yalla/screens/supplier_products/view/supplier_products.dart';
import 'package:yalla/screens/welcome/view_model/welcome_view_model.dart';
import 'package:yalla/utils/api_provider.dart';
import 'package:yalla/screens/main/view/main_view.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  ));

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<WelcomeScreenViewModel>.value(
          value: WelcomeScreenViewModel(),
        ),
        ChangeNotifierProvider(create: (context) => ApiProvider()),
      ],
      child: EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('ar', 'SA')],
        path: 'lib/localization/translations',
        fallbackLocale: const Locale('en', 'US'),
        startLocale: const Locale('en', 'US'),
        useFallbackTranslations: true,
        useOnlyLangCode: true,
        saveLocale: false,
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "yalla",
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const SafeArea(
        //child: ProductDetailView(),
        //child: SupplierProductsWidget(),
        //child: HomeScreen(),
        child: MainScreen(),
      ),
    );
  }
}

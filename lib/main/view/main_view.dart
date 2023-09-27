import 'package:flutter/material.dart';

import '../../utils/responsive_util.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Welcome to yalla',
            style: TextStyle(
              color: Colors.black,
              fontSize: ResponsiveUtil.calculateFontSize(context, 18),
              fontFamily: 'fonts/SulphurPoint-Regular.otf',
            ),
          ),
        ),
      ),
    );
  }

}
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:yalla/login/view/login_view.dart';
import 'package:yalla/signup/view/signup_view.dart';
import 'package:yalla/utils/responsive_util.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  final List<Offset> backgroundReferencePositions = [
    const Offset(38, 82),
    const Offset(202, 125),
    const Offset(302, 85),
    const Offset(20, 276),
    const Offset(327, 316),
    const Offset(39, 703),
    const Offset(181, 746),
    const Offset(340, 801),
  ];

  final List<String> backgroundAssetPaths = [
    'images/coffee_machine.svg',
    'images/food_truck.svg',
    'images/dairy_products.svg',
    'images/refrigerator.svg',
    'images/reusable.svg',
    'images/basket.svg',
    'images/kitchen_tool.svg',
    'images/mixer.svg',
  ];

  @override
  build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            ...backgroundReferencePositions.asMap().entries.map((entry) {
              final index = entry.key;
              final position = entry.value;

              return Positioned(
                left:
                    ResponsiveUtil.calculateLeftPosition(context, position.dx),
                top: ResponsiveUtil.calculateTopPosition(context, position.dy),
                child: SizedBox(
                  width: ResponsiveUtil.calculateWidth(context, 30),
                  height: ResponsiveUtil.calculateWidth(context, 30),
                  child: SvgPicture.asset(
                    backgroundAssetPaths[index],
                    fit: BoxFit.contain,
                  ),
                ),
              );
            }).toList(),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: ResponsiveUtil.calculateTopPosition(context, 195),
                ),
                child: SizedBox(
                  width: ResponsiveUtil.calculateWidth(context, 219),
                  height: ResponsiveUtil.calculateHeight(context, 60),
                  child: SvgPicture.asset(
                    'images/logo.svg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: ResponsiveUtil.calculateTopPosition(context, 355),
                ),
                child: Text(
                  "Welcome to Yalla!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: ResponsiveUtil.calculateFontSize(context, 24),
                    fontFamily: 'fonts/GoogleSans-Regular.ttf',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: ResponsiveUtil.calculateTopPosition(context, 401),
                ),
                child: Text(
                  "Everything your business needs\nin one platform",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF8280BD),
                    fontSize: ResponsiveUtil.calculateFontSize(context, 18),
                    fontFamily: 'fonts/GoogleSans-Regular.ttf',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: ResponsiveUtil.calculateTopPosition(context, 487),
                ),
                child: SizedBox(
                  width: ResponsiveUtil.calculateWidth(context, 363),
                  height: ResponsiveUtil.calculateHeight(context, 60),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4A46FF),
                      foregroundColor: Colors.white, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Button border radius
                      ),
                      elevation: 3, // Button elevation
                    ),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ResponsiveUtil.calculateFontSize(context, 18),
                        fontFamily: 'fonts/SulphurPoint-Regular.otf',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: ResponsiveUtil.calculateTopPosition(context, 567),
                ),
                child: SizedBox(
                  width: ResponsiveUtil.calculateWidth(context, 363),
                  height: ResponsiveUtil.calculateHeight(context, 60),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4A46FF),
                      foregroundColor: Colors.white, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Button border radius
                      ),
                      elevation: 3, // Button elevation
                    ),
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ResponsiveUtil.calculateFontSize(context, 18),
                        fontFamily: 'fonts/SulphurPoint-Regular.otf',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: ResponsiveUtil.calculateTopPosition(context, 667),
                ),
                child: Text(
                  "اذهب الى العربية",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF43C6BC),
                    fontSize: ResponsiveUtil.calculateFontSize(context, 16),
                    fontFamily: 'fonts/GoogleSans-Regular.ttf',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

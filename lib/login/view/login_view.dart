import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla/verification_code/view/verification_code_view.dart';
import 'package:yalla/utils/responsive_util.dart';

class LoginScreen extends StatefulWidget
{
  @override
  _LoginScreenState createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen>
{
  final TextEditingController _phoneNumberController = TextEditingController();
  Color _buttonColor = const Color(0xFFD3D3FF);
  bool isButtonActive = false;
  String phoneNumber = '';

  // Define a regular expression for phone number validation
  final RegExp _phoneNumberRegExp = RegExp(r'^[0-9]{7,}$');

  void _validatePhoneNumber(String phoneNumber) {
    final String phoneNumber = _phoneNumberController.text.trim();

    if (_phoneNumberRegExp.hasMatch(phoneNumber)) {
      isButtonActive = true;
      setState(() {
        _buttonColor = const Color(0xFF4A46FF);
      });
    } else {
      // invalid
      isButtonActive = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        bottom: true,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: ResponsiveUtil.calculateTopPosition(context, 62)),
                child: SizedBox(
                  width: ResponsiveUtil.calculateWidth(context, 108.75),
                  height: ResponsiveUtil.calculateHeight(context, 30),
                  child: SvgPicture.asset(
                    'images/logo.svg',
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: ResponsiveUtil.calculateTopPosition(context, 207)),
                child: Text(
                  "Log In",
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
                    top: ResponsiveUtil.calculateTopPosition(context, 253)),
                child: Text(
                  "Type in your mobile number to get\nback to your profile",
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
                    top: ResponsiveUtil.calculateTopPosition(context, 339)),
                child: SizedBox(
                  width: ResponsiveUtil.calculateWidth(context, 363),
                  height: ResponsiveUtil.calculateHeight(context, 60),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: const Color(0xFFD7D6FF),
                        width: 1.0,
                      ),
                    ),
                    child: Center(
                      child: TextField(
                        onChanged: (phoneNumber) {
                          this.phoneNumber = phoneNumber;
                          _validatePhoneNumber(phoneNumber);
                        },

                        controller: _phoneNumberController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'Phone number',
                          hintStyle: TextStyle(
                            color: const Color(0xFF8280BD),
                            fontSize: ResponsiveUtil.calculateFontSize(context, 16),
                            fontFamily: 'fonts/GoogleSans-Regular.ttf',
                            fontWeight: FontWeight.w400,
                          ),
                          labelStyle: TextStyle(
                            color: const Color(0xFFD7D6FF),
                            fontSize: ResponsiveUtil.calculateFontSize(context, 16),
                            fontFamily: 'fonts/GoogleSans-Regular.ttf',
                            fontWeight: FontWeight.w400,
                          ),
                          contentPadding: const EdgeInsets.all(15.0),
                          border: InputBorder.none,
                        ),
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
                    top: ResponsiveUtil.calculateTopPosition(context, 439)),
                child: SizedBox(
                  width: ResponsiveUtil.calculateWidth(context, 363),
                  height: ResponsiveUtil.calculateHeight(context, 60),
                  child: ElevatedButton(
                    onPressed: () {
                      if(isButtonActive)
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => VerificationCodeScreen(phoneNumber)),
                          );
                        }
                      else
                        {

                        }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _buttonColor,
                      foregroundColor: Colors.white, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Button border radius
                      ),
                      elevation: 3, // Button elevation
                    ),
                    child: Text(
                        'Next',
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
          ],
        ),
        ),
    );
  }

}
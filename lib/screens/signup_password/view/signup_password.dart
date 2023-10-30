import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla/utils/responsive_util.dart';

import '../../verification_code/view/verification_code_view.dart';

class SignupPasswordScreen extends StatefulWidget {
  final String receivedMessage;

  const SignupPasswordScreen(this.receivedMessage, {super.key});

  @override
  SignupPasswordScreenState createState() => SignupPasswordScreenState();
}

class SignupPasswordScreenState extends State<SignupPasswordScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  Color _buttonColor = const Color(0xFFD3D3FF);
  bool isButtonActive = false;
  bool isNameAvailable = false;
  bool isPasswordAvailable = false;
  bool isConfirmPasswordAvailable = false;
  bool isPasswordMatch = false;
  String password = '';
  String confirmPassword = '';

  bool isNameValid(String name) {
    // Regular expression pattern for a valid name
    final RegExp nameRegExp = RegExp(r"^[a-zA-Z\-' ]+$");

    // Check if the name matches the pattern
    return nameRegExp.hasMatch(name);
  }

  bool isPasswordValid(String password) {
    // Define the validation criteria
    const minLength = 8;
    final hasUppercase = RegExp(r'[A-Z]').hasMatch(password);
    final hasLowercase = RegExp(r'[a-z]').hasMatch(password);
    final hasDigit = RegExp(r'[0-9]').hasMatch(password);
    final hasSpecialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password);

    // Check if the password meets all the criteria
    return password.length >= minLength &&
        hasUppercase &&
        hasLowercase &&
        hasDigit &&
        hasSpecialChar;
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
                padding: EdgeInsets.only(
                    top: ResponsiveUtil.calculateTopPosition(context, 62)),
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
                  "Sign Up",
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
                    top: ResponsiveUtil.calculateTopPosition(context, 278)),
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
                        onChanged: (name) {
                          if (isNameValid(name)) {
                            isNameAvailable = true;
                          } else {
                            isNameAvailable = false;
                          }

                          if (isConfirmPasswordAvailable &&
                              isPasswordAvailable &&
                              isNameAvailable) {
                            if (password == confirmPassword) {
                              isPasswordMatch = true;
                            } else {
                              isPasswordMatch = false;
                            }
                          }

                          if (isNameAvailable &&
                              isPasswordAvailable &&
                              isConfirmPasswordAvailable &&
                              isPasswordMatch) {
                            isButtonActive = true;
                            setState(() {
                              _buttonColor = const Color(0xFF4A46FF);
                            });
                          } else {
                            isButtonActive = false;
                            setState(() {
                              _buttonColor = const Color(0xFFD3D3FF);
                            });
                          }
                        },
                        controller: _nameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: 'Full name',
                          hintStyle: TextStyle(
                            color: const Color(0xFF8280BD),
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 16),
                            fontFamily: 'fonts/GoogleSans-Regular.ttf',
                            fontWeight: FontWeight.w400,
                          ),
                          labelStyle: TextStyle(
                            color: const Color(0xFFD7D6FF),
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 16),
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
                    top: ResponsiveUtil.calculateTopPosition(context, 358)),
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
                        onChanged: (password) {
                          this.password = password;
                          if (isPasswordValid(password)) {
                            isPasswordAvailable = true;
                          } else {
                            isPasswordAvailable = false;
                          }

                          if (isConfirmPasswordAvailable &&
                              isPasswordAvailable) {
                            if (this.password == confirmPassword) {
                              isPasswordMatch = true;
                            } else {
                              isPasswordMatch = false;
                            }
                          }

                          if (isNameAvailable &&
                              isPasswordAvailable &&
                              isConfirmPasswordAvailable &&
                              isPasswordMatch) {
                            isButtonActive = true;
                            setState(() {
                              _buttonColor = const Color(0xFF4A46FF);
                            });
                          } else {
                            isButtonActive = false;
                            setState(() {
                              _buttonColor = const Color(0xFFD3D3FF);
                            });
                          }
                        },
                        controller: _passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: const Color(0xFF8280BD),
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 16),
                            fontFamily: 'fonts/GoogleSans-Regular.ttf',
                            fontWeight: FontWeight.w400,
                          ),
                          labelStyle: TextStyle(
                            color: const Color(0xFFD7D6FF),
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 16),
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
                    top: ResponsiveUtil.calculateTopPosition(context, 438)),
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
                        onChanged: (password) {
                          confirmPassword = password;
                          if (isPasswordValid(password)) {
                            isConfirmPasswordAvailable = true;
                          } else {
                            isConfirmPasswordAvailable = false;
                          }

                          if (isPasswordAvailable &&
                              isConfirmPasswordAvailable) {
                            if (this.password == confirmPassword) {
                              isPasswordMatch = true;
                            } else {
                              isPasswordMatch = false;
                            }
                          }

                          if (isNameAvailable &&
                              isPasswordAvailable &&
                              isConfirmPasswordAvailable &&
                              isPasswordMatch) {
                            isButtonActive = true;
                            setState(() {
                              _buttonColor = const Color(0xFF4A46FF);
                            });
                          } else {
                            isButtonActive = false;
                            setState(() {
                              _buttonColor = const Color(0xFFD3D3FF);
                            });
                          }
                        },
                        controller: _confirmPasswordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Confirm password',
                          hintStyle: TextStyle(
                            color: const Color(0xFF8280BD),
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 16),
                            fontFamily: 'fonts/GoogleSans-Regular.ttf',
                            fontWeight: FontWeight.w400,
                          ),
                          labelStyle: TextStyle(
                            color: const Color(0xFFD7D6FF),
                            fontSize:
                                ResponsiveUtil.calculateFontSize(context, 16),
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
                    top: ResponsiveUtil.calculateTopPosition(context, 538)),
                child: SizedBox(
                  width: ResponsiveUtil.calculateWidth(context, 363),
                  height: ResponsiveUtil.calculateHeight(context, 60),
                  child: ElevatedButton(
                    onPressed: () {
                      if (isButtonActive) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerificationCodeScreen(
                                  widget.receivedMessage)),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _buttonColor,
                      foregroundColor: Colors.white, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10.0), // Button border radius
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

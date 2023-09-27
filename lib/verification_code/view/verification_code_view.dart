import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla/main/view/main_view.dart';
import 'package:yalla/utils/responsive_util.dart';

class VerificationCodeScreen extends StatefulWidget {
  final String receivedMessage;
  VerificationCodeScreen(this.receivedMessage);

  @override
  _VerificationCodeScreen createState() => _VerificationCodeScreen();
}

class _VerificationCodeScreen extends State<VerificationCodeScreen> {
  final FocusNode digit1FocusNode = FocusNode();
  final FocusNode digit2FocusNode = FocusNode();
  final FocusNode digit3FocusNode = FocusNode();
  final FocusNode digit4FocusNode = FocusNode();

  bool isDigit1Validated = false;
  bool isDigit2Validated = false;
  bool isDigit3Validated = false;
  bool isDigit4Validated = false;

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
                  "Enter verification code",
                  style: TextStyle(
                    color: const Color(0xFF03014B),
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
                  "We have sent you the verification code\nto ${widget.receivedMessage}",
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
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: ResponsiveUtil.calculateTopPosition(context, 339),
                  left: ResponsiveUtil.calculateLeftPosition(context, 15),
                ),
                child: SizedBox(
                  width: ResponsiveUtil.calculateWidth(context, 75.75),
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
                        onChanged: (value) {
                          if (value.length == 1) {
                            digit2FocusNode.requestFocus();
                            isDigit1Validated = true;
                          }
                          else {
                            isDigit1Validated = false;
                          }
                        },
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: const Color(0xFF030075),
                            fontSize: ResponsiveUtil.calculateFontSize(context, 24),
                            fontFamily: 'fonts/SulphurPoint-Regular.ttf',
                            fontWeight: FontWeight.w700,
                          ),
                          border: InputBorder.none,
                          counterText: '',
                        ),
                        focusNode: digit1FocusNode,
                      ),
                    ),
                  )
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: ResponsiveUtil.calculateTopPosition(context, 339),
                  left: ResponsiveUtil.calculateLeftPosition(context, 111),
                ),
                child: SizedBox(
                    width: ResponsiveUtil.calculateWidth(context, 75.75),
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
                          onChanged: (value) {
                            if (value.length == 1) {
                              digit3FocusNode.requestFocus();
                              isDigit2Validated = true;
                            } else if(value.isEmpty) {
                              digit1FocusNode.requestFocus();
                              isDigit2Validated = false;
                            }
                          },
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              color: const Color(0xFF030075),
                              fontSize: ResponsiveUtil.calculateFontSize(context, 24),
                              fontFamily: 'fonts/SulphurPoint-Regular.ttf',
                              fontWeight: FontWeight.w700,
                            ),
                            contentPadding: const EdgeInsets.all(0.0),
                            border: InputBorder.none,
                            counterText: '',
                          ),focusNode: digit2FocusNode,
                        ),
                      ),
                    )
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: ResponsiveUtil.calculateTopPosition(context, 339),
                  left: ResponsiveUtil.calculateLeftPosition(context, 207),
                ),
                child: SizedBox(
                    width: ResponsiveUtil.calculateWidth(context, 75.75),
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
                          onChanged: (value) {
                            // Update the verification code as each digit is entered
                            setState(() {
                              //verificationCode = value;
                            });

                            // Automatically move focus to the next field when a digit is entered
                            if (value.length == 1) {
                              digit4FocusNode.requestFocus();
                              isDigit3Validated = true;
                            } else if(value.isEmpty) {
                              digit2FocusNode.requestFocus();
                              isDigit3Validated = false;
                            }

                          },
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              color: const Color(0xFF030075),
                              fontSize: ResponsiveUtil.calculateFontSize(context, 24),
                              fontFamily: 'fonts/SulphurPoint-Regular.ttf',
                              fontWeight: FontWeight.w700,
                            ),
                            contentPadding: const EdgeInsets.all(0.0),
                            border: InputBorder.none,
                            counterText: '',
                          ),
                          focusNode: digit3FocusNode,
                        ),
                      ),
                    )
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: ResponsiveUtil.calculateTopPosition(context, 339),
                  left: ResponsiveUtil.calculateLeftPosition(context, 303),
                ),
                child: SizedBox(
                    width: ResponsiveUtil.calculateWidth(context, 75.75),
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
                          onChanged: (value) {
                            // Update the verification code as each digit is entered
                            setState(() {
                              //verificationCode = value;
                            });

                            // Automatically move focus to the next field when a digit is entered
                            if (value.isEmpty) {
                              digit3FocusNode.requestFocus();
                              isDigit4Validated = false;
                            }
                            else if(value.length == 1) {
                              isDigit4Validated = true;
                            }

                            if(isDigit1Validated && isDigit2Validated && isDigit3Validated && isDigit4Validated) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MainScreen()),
                              );
                            }
                          },
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              color: const Color(0xFF030075),
                              fontSize: ResponsiveUtil.calculateFontSize(context, 24),
                              fontFamily: 'fonts/SulphurPoint-Regular.ttf',
                              fontWeight: FontWeight.w700,
                            ),
                            contentPadding: const EdgeInsets.all(0.0),
                            border: InputBorder.none,
                            counterText: '',
                          ),
                          focusNode: digit4FocusNode,
                        ),
                      ),
                    )
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: ResponsiveUtil.calculateTopPosition(context, 439)),
                child: Text(
                  "00 : 50",
                  style: TextStyle(
                    color: const Color(0xFF43C6BC),
                    fontSize: ResponsiveUtil.calculateFontSize(context, 18),
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

  @override
  void dispose() {
    // Dispose of the FocusNodes when they are no longer needed
    digit1FocusNode.dispose();
    digit2FocusNode.dispose();
    digit3FocusNode.dispose();
    digit4FocusNode.dispose();
    super.dispose();
  }
}

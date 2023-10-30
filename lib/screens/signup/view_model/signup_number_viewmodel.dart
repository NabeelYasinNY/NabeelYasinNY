import 'package:flutter/cupertino.dart';

import '../../../constants/colors.dart';

class SignUpViewModel {
  final TextEditingController phoneNumberController = TextEditingController();
  final RegExp _phoneNumberRegExp = RegExp(r'^[0-9]{9,}$');
  final Color activeButtonColor = CustomColors.activeButtonColor;
  final Color inactiveButtonColor = CustomColors.inactiveButtonColor;
  Color buttonColor = CustomColors.inactiveButtonColor;
  bool isButtonActive = false;
  ValueChanged<bool> onButtonColorUpdated = (isValid) {};

  void _validatePhoneNumber(String phoneNumber) {
    final String phoneNumber = phoneNumberController.text.trim();

    if (_phoneNumberRegExp.hasMatch(phoneNumber)) {
      updateUI(true);
    } else {
      updateUI(false);
    }
  }

  void updateUI(bool isValid) {
    buttonColor = isValid ? activeButtonColor : inactiveButtonColor;
    isButtonActive = isValid;
    onButtonColorUpdated(isValid);
  }
}
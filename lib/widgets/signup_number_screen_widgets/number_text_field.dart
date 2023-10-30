import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/positions.dart';
import '../../constants/sizes.dart';
import '../../constants/text_translation_key_strings.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/custom_text_field.dart';

class PhoneNumberTextFieldWidget extends StatefulWidget {
  const PhoneNumberTextFieldWidget({Key? key}) : super(key: key);

  @override
  PhoneNumberTextFieldWidgetState createState() =>
      PhoneNumberTextFieldWidgetState();
}

class PhoneNumberTextFieldWidgetState
    extends State<PhoneNumberTextFieldWidget> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final Color activeButtonColor = CustomColors.activeButtonColor;
  final Color inactiveButtonColor = CustomColors.inactiveButtonColor;
  Color _buttonColor = CustomColors.inactiveButtonColor;
  bool isButtonActive = false;
  String phoneNumber = '';

  final RegExp _phoneNumberRegExp = RegExp(r'^[0-9]{9,}$');

  void _validatePhoneNumber(String phoneNumber) {
    final String phoneNumber = _phoneNumberController.text.trim();

    if (_phoneNumberRegExp.hasMatch(phoneNumber)) {
      updateUI(true);
    } else {
      updateUI(false);
    }
  }

  void updateUI(bool isValid) {
    setState(() {
      _buttonColor = isValid ? activeButtonColor : inactiveButtonColor;
      isButtonActive = isValid;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: _phoneNumberController,
      hintText: tr(SignUpScreenTranslationKeys.signUpNumberHintText),
      alignment: Alignment.topCenter,
      topPadding: ResponsiveUtil.calculateTopPosition(
          context, SignupScreenObjectsPositions.numberTextFieldPos),
      width: ResponsiveUtil.calculateWidth(
          context, CommonSizes.textFieldSize.width),
      height: ResponsiveUtil.calculateHeight(
          context, CommonSizes.textFieldSize.height),
      onChanged: (phoneNumber) {
        this.phoneNumber = phoneNumber;
        _validatePhoneNumber(phoneNumber);
      },
    );
  }
}

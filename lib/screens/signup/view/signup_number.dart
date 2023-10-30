import 'package:flutter/material.dart';
import 'package:yalla/widgets/generic_widgets/background.dart';
import 'package:yalla/widgets/generic_widgets/scaffold.dart';
import 'package:yalla/widgets/signup_number_screen_widgets/logo.dart';
import 'package:yalla/widgets/signup_number_screen_widgets/number_text_field.dart';
import '../../../widgets/generic_widgets/next_button.dart';
import '../../../widgets/signup_number_screen_widgets/message_text.dart';
import '../../../widgets/signup_number_screen_widgets/title_text.dart';
import '../view_model/signup_number_viewmodel.dart';

class SignUpNumberScreen extends StatefulWidget {
  const SignUpNumberScreen({super.key});

  @override
  SignupScreenState createState() => SignupScreenState();
}

class SignupScreenState extends State<SignUpNumberScreen> {
  final SignUpViewModel viewModel = SignUpViewModel();

  void onButtonColorUpdated(bool isValid) {
    setState(() {
      viewModel.buttonColor =
          isValid ? viewModel.activeButtonColor : viewModel.inactiveButtonColor;
      viewModel.isButtonActive = isValid;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      children: [
        const BackgroundWidget(),
        const SignUpScreenLogoWidget(),
        const SignUpScreenTitleTextWidget(),
        const SignUpScreenMessageTextWidget(),
        const PhoneNumberTextFieldWidget(),
        NextButtonWidget(
          isButtonActive: viewModel.isButtonActive,
          phoneNumber: viewModel.phoneNumberController.text.trim(),
          buttonColor: viewModel.buttonColor,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yalla/login/view/login_view.dart';
import 'package:yalla/welcome/view/welcome_view.dart';

void main() {
  runApp(
    MaterialApp(
      title: "yalla",
      home: SafeArea(
        child: WelcomeScreen(),
        ),
      ),
  );

  // Hide the system's bottom navigation bar
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}
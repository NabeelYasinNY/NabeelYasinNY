import 'package:flutter/material.dart';

class CommonScaffold extends StatelessWidget {
  final List<Widget> children;

  const CommonScaffold({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: true,
        child: Stack(
          children: [
            ...children,
          ],
        ),
      ),
    );
  }
}
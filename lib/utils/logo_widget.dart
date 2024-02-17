import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/robot.png',
      height: 100,
      width: 100,
      alignment: Alignment.center,
    );
  }
}
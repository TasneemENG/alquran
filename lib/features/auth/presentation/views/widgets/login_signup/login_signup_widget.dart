import 'package:flutter/material.dart';

import 'custom_tap_bar.dart';
import 'header.dart';
class LoginSignupWidget extends StatefulWidget {
  const LoginSignupWidget({super.key});

  @override
  State<LoginSignupWidget> createState() => _LoginSignupWidgetState();
}

class _LoginSignupWidgetState extends State<LoginSignupWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const SizedBox(height: 76,),
          const Header(),
          CustomTabBar(),
        ]
    );
  }
}

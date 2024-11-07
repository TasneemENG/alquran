import 'package:flutter/material.dart';

import 'widgets/forget_pass_verification/forget_password_body.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: ForgetPasswordBody()
      ),
    );
  }
}
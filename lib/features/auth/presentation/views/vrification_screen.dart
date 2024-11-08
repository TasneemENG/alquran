import 'package:flutter/material.dart';

import 'widgets/forget_pass_verification/verification_body.dart';
class VrificationScreen extends StatefulWidget {
  const VrificationScreen({super.key});

  @override
  State<VrificationScreen> createState() => _VrificationScreenState();
}

class _VrificationScreenState extends State<VrificationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VerificationBody(),
    );
  }
}

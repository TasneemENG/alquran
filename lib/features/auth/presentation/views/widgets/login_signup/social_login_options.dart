import 'package:alquran/core/resources/colors.dart';
import 'package:flutter/material.dart';

class SocialLoginOptions extends StatelessWidget {
  const SocialLoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.white,
          radius: 30,
          child: Image.asset(
            'assets/images/facebook.png',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 10.0),
        CircleAvatar(
          backgroundColor: AppColors.white,
          radius: 30,
          child: Image.asset(
            'assets/images/google.png',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 10.0),
        CircleAvatar(
          backgroundColor: AppColors.white,
          radius: 30,
          child: Image.asset(
            'assets/images/apple.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

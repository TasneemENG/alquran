import 'package:alquran/core/resources/colors.dart';
import 'package:flutter/material.dart';

class SocialLoginOptions extends StatelessWidget {
  const SocialLoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> socialMedia = [
      {'icon': 'assets/images/facebook.png', 'label': 'Facebook'},
      {'icon': 'assets/images/google.png', 'label': 'Google'},
      {'icon': 'assets/images/apple.png', 'label': 'Apple'},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: socialMedia.map((social) {
        return GestureDetector(
          onTap: () {
            // Handle social login action here
            print('${social['label']} login tapped');
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CircleAvatar(
              backgroundColor: AppColors.white,
              radius: 30,
              child: Image.asset(
                social['icon']!,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

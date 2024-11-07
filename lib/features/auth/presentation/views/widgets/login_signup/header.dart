import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GradientText(
            'أولي العزم',
            style: TextStyles.s32w700gradient,
            colors: [
              Color(0xFFA85000),
              Color(0xFF522700),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 62.0, right: 62),
            child: Text(
              'قم بتسجيل الدخول أو إنشاء حساب جديد لحفظ تقدمك',
              style: TextStyles.s16w500solidgray,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

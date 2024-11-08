import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil for responsiveness

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GradientText(
            'أولي العزم',
            style: TextStyles.s32w700gradient.copyWith(
              fontSize: 32.sp,
            ),
            colors: const [
              Color(0xFFA85000),
              Color(0xFF522700),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 62.w),
            child: Text(
              'قم بتسجيل الدخول أو إنشاء حساب جديد لحفظ تقدمك',
              style: TextStyles.s16w500solidgray.copyWith(
                fontSize: 16.sp,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}

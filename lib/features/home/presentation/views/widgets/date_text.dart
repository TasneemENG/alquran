import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:alquran/core/resources/styles.dart';

class DateText extends StatelessWidget {
  const DateText({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 140.h,
      left: 24.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'الثلاثاء , 13 مارس',
            style: TextStyles.s16w500white,
          ),
          SizedBox(height: 5.h),
          Text(
            '3 رمضان | 1445 هجري',
            style: TextStyles.s16w500white,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:alquran/core/resources/styles.dart';

class PrayerTimeDetails extends StatelessWidget {
  const PrayerTimeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 145.h,
      left: 252.w,
      child: Column(
        children: [
          Text(
            'الفجر',
            style: TextStyles.s16w600brwon,
          ),
          Text(
            '04:39 ص',
            style: TextStyles.s14w500solidbrown,
          ),
          Text(
            '-04:11:42',
            style: TextStyles.s14w400brown,
          ),
        ],
      ),
    );
  }
}

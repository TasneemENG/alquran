import 'package:alquran/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resources/styles.dart';

class ContinueWidget extends StatelessWidget {
  final String name;
  final String num;
  const ContinueWidget({super.key, required this.name, required this.num});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        children: [
          Container(
            width: 342.w,
            height: 156.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage('assets/images/containue.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 20.h,
            left: 20.w,
            child: Image.asset('assets/images/arcticons_al-quran-indonesia.png'),
          ),
          Positioned(
            top: 20.h,
            right: 15.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'متابعة القرآن من حيث توقفت',
                  style: TextStyles.s16w400white,
                ),
                Row(
                  children: [
                    Text(
                      'توقفت عند سورة ',
                      style: TextStyles.s16w400white,
                    ),
                    Text(
                      name,
                      style: TextStyles.s16w400brwon,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'صفحة ',
                      style: TextStyles.s16w400white,
                    ),
                    Text(
                      num,
                      style: TextStyles.s16w400brwon,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20.h,
            right: 15.w,
            child: Container(
              width: 127.w,
              height: 33.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33.0),
                color: AppColors.accentBrown,
              ),
              child: Text(
                'متابعة الحفظ',
                style: TextStyles.s16w400white,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

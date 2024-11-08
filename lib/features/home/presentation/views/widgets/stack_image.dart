import 'package:alquran/core/resources/styles.dart';
import 'package:alquran/features/home/presentation/views/widgets/prayer_time_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'background_image.dart';
import 'date_text.dart';

class StackImage extends StatefulWidget {
  const StackImage({super.key});

  @override
  State<StackImage> createState() => _StackImageState();
}

class _StackImageState extends State<StackImage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        children: [
          const BackgroundImage(),
          Positioned(
            top: 60.h,
            left: 342.w,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/alarm.png'),
            ),
          ),
          const DateText(),
          Positioned(
            top: 110.h,
            left: 200.w,
            child: Image.asset('assets/images/data_time.png'),
          ),
          const PrayerTimeDetails(),
          Positioned(
            top: 240.h,
            left: 260.w,
            child: Text(
              'الزقازيق , السلام',
              style: TextStyles.s16w500white,
            ),
          ),
        ],
      ),
    );
  }
}


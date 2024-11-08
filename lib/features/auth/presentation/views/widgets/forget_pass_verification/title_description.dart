import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleDescription extends StatelessWidget {
  final String title;
  final String description;

  const TitleDescription({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.right,
          style: TextStyles.s24w500brown.copyWith(fontSize: 24.sp),
        ),
        SizedBox(height: 30.h),
        Text(
          description,
          textAlign: TextAlign.right,
          style: TextStyles.s16w400solidgray.copyWith(fontSize: 16.sp),
        ),
      ],
    );
  }
}

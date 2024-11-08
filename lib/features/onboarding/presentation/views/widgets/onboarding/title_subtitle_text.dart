import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import for responsiveness

class TitleSubtitleText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final double topPosition;

  const TitleSubtitleText({
    super.key,
    required this.text,
    required this.style,
    required this.topPosition,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPosition.h,
      left: 10.w,
      right: 10.w,
      child: Center(
        child: Text(
          text,
          style: style.copyWith(
            fontSize: style.fontSize?.sp,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

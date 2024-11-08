import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 280.h,
      child: Image.asset(
        'assets/images/stack_image.png',
        fit: BoxFit.cover,
      ),
    );
  }
}

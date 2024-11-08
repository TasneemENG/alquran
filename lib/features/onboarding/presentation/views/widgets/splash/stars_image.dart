import 'package:alquran/core/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StarsImage extends StatelessWidget {
  const StarsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 347.w,
      height: 136.h,
      child: Image.asset(
        "assets/images/stars.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
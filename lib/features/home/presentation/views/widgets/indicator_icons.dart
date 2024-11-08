import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IndicatorIcons extends StatelessWidget {
  const IndicatorIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIcon('assets/images/mynaui_sunrise.png'),
        SizedBox(width: 60.w),
        _buildIcon('assets/images/mi_sunset.png'),
        SizedBox(width: 60.w),
        _buildIcon('assets/images/ph_sun.png'),
        SizedBox(width: 60.w),
        _buildIcon('assets/images/tabler_haze-moon.png'),
        SizedBox(width: 60.w),
        _buildIcon('assets/images/ph_moon.png'),
      ],
    );
  }

  Widget _buildIcon(String assetPath) {
    return Container(
      width: 24.w,
      height: 24.h,
      child: Image.asset(assetPath, fit: BoxFit.cover),
    );
  }
}

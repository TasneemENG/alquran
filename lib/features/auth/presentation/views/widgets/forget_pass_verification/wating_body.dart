import 'package:alquran/core/functions/helper.dart';
import 'package:alquran/core/manage_routes/routes.dart';
import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WatingBody extends StatefulWidget {
  const WatingBody({super.key});

  @override
  State<WatingBody> createState() => _WatingBodyState();
}

class _WatingBodyState extends State<WatingBody> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );

    _controller.forward();

    Future.delayed(const Duration(seconds: 3), () {
      context.pushNamed(Routes.homeView);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: Column(
        children: [
          SizedBox(height: 115.h),
          Center(
            child: SizedBox(
              height: 450.h,
              width: 314.w,
              child: Image.asset('assets/images/quran.png'),
            ),
          ),
          SizedBox(height: 30.h),
          Text(
            'تم ارسال طلبك',
            style: TextStyles.s24w600brown.copyWith(fontSize: 24.sp),
          ),
          SizedBox(height: 30.h),
          Text(
            'يرجى الانتظار..\nسيقوم المسؤولون بتسكينك مع أحد المحفظين',
            style: TextStyles.s16w500black.copyWith(fontSize: 16.sp),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

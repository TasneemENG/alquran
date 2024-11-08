import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashImage extends StatelessWidget {
  const SplashImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 410.w,
      height: 550.h,
      child: Image.asset(
        "assets/images/splash.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
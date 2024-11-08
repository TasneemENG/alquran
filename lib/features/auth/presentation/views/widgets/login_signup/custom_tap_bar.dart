import 'package:alquran/core/resources/colors.dart';
import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'login_content.dart';
import 'sign_up_content.dart';
import 'social_login_options.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 358.w,
            height: 40.h,
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: AppColors.lightGrayOverlay,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Sign Up Tab
                GestureDetector(
                  onTap: () => onTabTapped(0),
                  child: Container(
                    height: 30.h,
                    width: 154.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: selectedIndex == 0
                          ? Colors.white
                          : AppColors.lightGrayOverlay,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      'إنشاء حساب',
                      style: TextStyles.s16w400brwon.copyWith(
                        color: selectedIndex == 0
                            ? AppColors.accentBrown
                            : AppColors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                // Login Tab
                GestureDetector(
                  onTap: () => onTabTapped(1),
                  child: Container(
                    height: 30.h,
                    width: 154.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: selectedIndex == 1
                          ? Colors.white
                          : AppColors.lightGrayOverlay,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyles.s16w400brwon.copyWith(
                        color: selectedIndex == 1
                            ? AppColors.accentBrown
                            : AppColors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 40.h),

          selectedIndex == 0
              ? SignUpContent()
              : LoginContent(),
          SizedBox(height: 40.h),
          Text(
            'خيارات تسجيل الدخول الأخرى',
            style: TextStyles.s14w400solidgray.copyWith(color: AppColors.black),
          ),
          SizedBox(height: 20.h),
          const SocialLoginOptions(),
        ],
      ),
    );
  }
}

import 'package:alquran/core/resources/colors.dart';
import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'login_content.dart';
import 'sign_up_content.dart';
import 'social_login_options.dart';

class CustomTabBar extends StatefulWidget {
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
          // Custom Tab Bar
          Container(
            width: 358,
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
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
                    height: 30,
                    width: 154,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:
                          selectedIndex == 0 ? Colors.white : AppColors.lightGrayOverlay,
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
                SizedBox(width: 8.0),
                // Login Tab
                GestureDetector(
                  onTap: () => onTabTapped(1),
                  child: Container(
                    height: 30,
                    width: 154,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:
                          selectedIndex == 1 ? Colors.white : AppColors.lightGrayOverlay,
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
      
          SizedBox(height: 40),

          selectedIndex == 0
              ? SignUpContent()
              : LoginContent(),
          const SizedBox(height: 40.0),
          Text(
            'خيارات تسجيل الدخول الأخرى',
            style: TextStyles.s14w400solidgray.copyWith(color: AppColors.black),
          ),
          const SizedBox(height: 20.0),
          const SocialLoginOptions(),
        ],
      ),
    );
  }
}

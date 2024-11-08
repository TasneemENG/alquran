import 'package:alquran/core/resources/colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;

  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      items: const <Widget>[
        NavIcon('assets/images/tabler_home-filled (1).png'),
        NavIcon('assets/images/ph_mosque.png'),
        NavIcon('assets/images/Vector.png'),
        NavIcon('assets/images/icon-park-outline_two-hands.png'),
        NavIcon('assets/images/ep_setting.png'),
      ],
      index: selectedIndex,
      color: AppColors.lightBrown,
      buttonBackgroundColor: AppColors.lightBrown,
      backgroundColor: Colors.transparent,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      onTap: onTap,
      height: 55.h,
    );
  }
}

class NavIcon extends StatelessWidget {
  final String assetPath;

  const NavIcon(this.assetPath, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.w,
      height: 20.h,
      child: Image.asset(assetPath, fit: BoxFit.cover),
    );
  }
}

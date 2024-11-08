import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:alquran/core/functions/helper.dart';
import '../../../../../../core/manage_routes/routes.dart';
import 'action_buttons_row.dart';
import 'title_subtitle_text.dart';
import '../../../../../../core/resources/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  static const double topPosition = 359;
  static const double leftPosition = 16;
  static const double containerWidth = 358;
  static const double containerHeight = 304;

  final String title;
  final String subTitle;
  final int currentPage;
  final PageController pageController;

  const CustomContainer({
    super.key,
    required this.title,
    required this.subTitle,
    required this.currentPage,
    required this.pageController,
  });

  void handleNext(BuildContext context) {
    if (currentPage < 2) {
      pageController.animateToPage(
        currentPage + 1,
        duration: const Duration(milliseconds: 400),
        curve: Curves.decelerate,
      );
    } else {
      context.pushNamed(Routes.loginView);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPosition.h,
      left: leftPosition.w,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24.r),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 1),
              child: Container(
                width: containerWidth.w,
                height: containerHeight.h,
                decoration: BoxDecoration(
                  color: const Color(0xBA000000),
                  borderRadius: BorderRadius.circular(24.r),
                ),
              ),
            ),
          ),
          TitleSubtitleText(
            text: title,
            style: TextStyles.s40w600white,
            topPosition: 38.h,
          ),
          TitleSubtitleText(
            text: subTitle,
            style: TextStyles.s24w400white,
            topPosition: 127.h,
          ),
          ActionButtonsRow(
            onSkip: () {
              context.pushNamed(Routes.loginView);
            },
            onContinue: () => handleNext(context),
          ),
        ],
      ),
    );
  }
}

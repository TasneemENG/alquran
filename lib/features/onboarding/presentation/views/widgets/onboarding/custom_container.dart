import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:alquran/core/functions/helper.dart';
import '../../../../../../core/manage_routes/routes.dart';
import '../../../../../../core/resources/colors.dart';
import 'action_buttons_row.dart';
import 'title_subtitle_text.dart';
import '../../../../../../core/resources/styles.dart';

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
      context.pushReplacementNamed(Routes.homeView);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPosition,
      left: leftPosition,
      child: Stack(
        children: [
          // Background with blur effect
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 1),
              child: Container(
                width: containerWidth,
                height: containerHeight,
                decoration: BoxDecoration(
                  color: const Color(0xBA000000),
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
          ),
          // Title Text
          TitleSubtitleText(
            text: title,
            style: TextStyles.s40w600white,
            topPosition: 38,
          ),
          // Subtitle Text
          TitleSubtitleText(
            text: subTitle,
            style: TextStyles.s24w400white,
            topPosition: 127,
          ),
          // Action Buttons Row
          ActionButtonsRow(
            onSkip: () {
              context.pushReplacementNamed(Routes.homeView);
            },
            onContinue: () => handleNext(context),
          ),
        ],
      ),
    );
  }
}

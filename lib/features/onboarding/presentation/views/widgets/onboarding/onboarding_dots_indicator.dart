import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../../core/resources/colors.dart';

class OnboardingDotsIndicator extends StatelessWidget {
  const OnboardingDotsIndicator({
    super.key,
    required this.currentPage,
    required this.dotCount,
    this.dotColor = AppColors.white,
    this.activeDotColor = AppColors.accentBrown,
    this.spacing = 3.0,
  });

  final int currentPage;
  final int dotCount;
  final Color dotColor;
  final Color activeDotColor;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 763,
      left: 155,
      child: AnimatedSmoothIndicator(
        activeIndex: currentPage,
        count: dotCount,
        effect: ExpandingDotsEffect(
            activeDotColor: activeDotColor,
            spacing: spacing,
            dotColor: dotColor,
            dotWidth: 12,
            dotHeight: 12,
            expansionFactor: 4),
      ),
    );
  }
}

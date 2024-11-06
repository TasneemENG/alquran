import 'package:flutter/material.dart';

import '../../../../../../core/resources/colors.dart';
import 'onboarding_dots_indicator.dart';
import 'onboarding_page_view.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0; // Add state variable for current page

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        OnboardingPageView(
          pageController: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
        ),
        OnboardingDotsIndicator(
          currentPage: _currentPage,
          dotCount: 3,
        ),
      ],
    );
  }
}
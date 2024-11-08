import 'package:flutter/material.dart';
import 'onboarding_dots_indicator.dart';
import 'onboarding_page_view.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _startFadeIn();
  }

  void _startFadeIn() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _isVisible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 1500),
      child: Stack(
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
      ),
    );
  }
}

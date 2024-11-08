import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Add this import for responsiveness
import 'page_view_item.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({
    super.key,
    required this.onPageChanged,
    required this.pageController,
  });

  final PageController pageController;
  final Function(int) onPageChanged;

  @override
  _OnboardingPageViewState createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: widget.pageController,
      onPageChanged: (index) {
        setState(() {
          _currentPage = index;
        });
        widget.onPageChanged(index);
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return PageViewItem(
          index: index,
          currentPage: _currentPage,
          pageController: widget.pageController,
        );
      },
    );
  }
}

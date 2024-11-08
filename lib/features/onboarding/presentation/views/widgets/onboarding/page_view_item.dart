import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Add this for responsiveness
import '../../../../data/models/onboarding_item.dart';
import 'custom_container.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.index,
    required this.currentPage,
    required this.pageController,
  });

  final int index;
  final int currentPage;
  final PageController pageController;

  static const List<OnboardingItemModel> onboardingItem = [
    OnboardingItemModel(
      title: 'مرحباً!',
      subTitle: 'ابدأ رحلتك في حفظ القرآن بسهولة وبالوتيرة التي تناسبك.',
      image: 'assets/images/onboarding1.png',
    ),
    OnboardingItemModel(
      title: 'خطط مخصصة',
      subTitle: 'ضع أهدافك الخاصة وتلقَّ تذكيرات مخصصة لتبقى على المسار.',
      image: 'assets/images/onboarding2.png',
    ),
    OnboardingItemModel(
      title: 'حافظ على التحفيز',
      subTitle: 'استلم تذكيرات يومية وآيات ملهمة تبقيك متصلاً بالقرآن.',
      image: 'assets/images/onboarding3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          onboardingItem[index].image,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        CustomContainer(
          title: onboardingItem[index].title,
          subTitle: onboardingItem[index].subTitle,
          currentPage: currentPage,
          pageController: pageController,
        ),
      ],
    );
  }
}

import 'package:alquran/features/home/presentation/views/widgets/continue_widget.dart';
import 'package:alquran/features/home/presentation/views/widgets/indicator_icons.dart';
import 'package:alquran/features/home/presentation/views/widgets/profile_card_list.dart';
import 'package:alquran/features/home/presentation/views/widgets/stack_image.dart';
import 'package:alquran/features/home/presentation/views/widgets/white_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'catygory_list.dart';
import 'step_indicator.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int currentStep = 3;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const StackImage(),
            SizedBox(height: 20.h),
            CustomStepIndicator(
              currentStep: currentStep,
              totalSteps: 5,
            ),
            SizedBox(height: 10.h),
            const IndicatorIcons(),
            SizedBox(height: 20.h),
            const CatygoryList(),
            SizedBox(height: 20.h),
            const ContinueWidget(
              name: 'النساء',
              num: '79',
            ),
            SizedBox(height: 20.h),
            const WhiteContainer(
              title: 'آية اليوم',
              content:
              ' أَلَمۡ یَأۡنِ لِلَّذِینَ ءَامَنُوۤا۟ أَن تَخۡشَعَ قُلُوبُهُمۡ لِذِكۡرِ ٱللَّهِ وَمَا نَزَلَ مِنَ ٱلۡحَقِّ وَلَا یَكُونُوا۟ كَٱلَّذِینَ أُوتُوا۟ ٱلۡكِتَـٰبَ مِن قَبۡلُ فَطَالَ عَلَیۡهِمُ ٱلۡأَمَدُ فَقَسَتۡ قُلُوبُهُمۡۖ وَكَثِیرࣱ مِّنۡهُمۡ فَـٰسِقُونَ﴾',
            ),
            SizedBox(height: 20.h),
            const WhiteContainer(
              title: 'حديث اليوم',
              content:
              'قال رسول الله صلى الله عليه وسلم: (إنَّ مِن أحبِّكم إليَّ وأقربِكُم منِّي مجلسًا يومَ القيامةِ أحاسنَكُم أخلاقًا)',
            ),
            SizedBox(height: 20.h),
            const ProfileCardList(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resources/styles.dart';
import 'profile_card.dart';

class ProfileCardList extends StatelessWidget {
  const ProfileCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Text('المُحفظون', style: TextStyles.s20w500black),
              ),
              Row(
                children: [
                  Text('عرض الكل', style: TextStyles.s16w500brown),
                  IconButton(onPressed: () {}, icon: Image.asset('assets/images/oui_arrow-up.png'))
                ],
              )
            ],
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: [
                ProfileCard(
                  name: 'محمد علي',
                  occupation: 'حفظ',
                  imageUrl: 'assets/images/boy.png',
                  rating: 4.6,
                ),
                ProfileCard(
                  name: 'محمد علي',
                  occupation: 'حفظ',
                  imageUrl: 'assets/images/boy.png',
                  rating: 4.6,
                ),
                ProfileCard(
                  name: 'محمد علي',
                  occupation: 'حفظ',
                  imageUrl: 'assets/images/boy.png',
                  rating: 4.6,
                ),
                // Add more ProfileCards as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}

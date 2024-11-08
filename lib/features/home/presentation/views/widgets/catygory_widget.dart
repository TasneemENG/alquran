import 'package:alquran/core/resources/colors.dart';
import 'package:alquran/features/home/presentation/views/widgets/background_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resources/styles.dart';
class CatygoryWidget extends StatelessWidget {
  final String image;
  final String name;
  const CatygoryWidget({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            width: 60.w,
            height: 60.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.lightBrown
            ),
            child: Image.asset(image),
          ),
          SizedBox(height: 5,),
          Text(name, style: TextStyles.s16w500brown,)
        ],
      ),
    );
  }
}

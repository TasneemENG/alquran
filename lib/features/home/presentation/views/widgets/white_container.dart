import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resources/colors.dart';

class WhiteContainer extends StatelessWidget {
  final String title;
  final String content;
  const WhiteContainer({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342.w,
      height: 197.h,
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.7),
        borderRadius: BorderRadius.all(
          Radius.circular(8.r),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xff00000040),
            offset: Offset(0, 4.h),
            blurRadius: 4.r,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Image.asset('assets/images/Frame 41.png')),
              Text(title, style: TextStyles.s20w600brwon,),
              SizedBox(width: 110.w,),
              IconButton(onPressed: (){}, icon: Image.asset('assets/images/ooui_share.png')),
              IconButton(onPressed: (){}, icon: Image.asset('assets/images/tabler_bookmark-filled.png')),
            ],
          ),
          Divider( color: AppColors.accentBrown.withOpacity(.27),),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(content, style: TextStyles.s16w400black, textAlign: TextAlign.center,),
          )
        ],
      ),
    );
  }
}

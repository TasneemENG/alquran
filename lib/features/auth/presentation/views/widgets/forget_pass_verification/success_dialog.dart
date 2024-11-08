import 'package:alquran/core/functions/helper.dart';
import 'package:alquran/core/manage_routes/routes.dart';
import 'package:alquran/core/resources/colors.dart';
import 'package:alquran/core/resources/styles.dart';
import 'package:alquran/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      content: Padding(
        padding: EdgeInsets.all(8.0.w),
        child: SizedBox(
          width: 327.w,
          height: 350.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: AppColors.offWhite,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check,
                  color: AppColors.accentBrown,
                  size: 48.sp,
                ),
              ),
              SizedBox(height: 16.h),
              Text('تم بنجاح', style: TextStyles.s24w700black.copyWith(fontSize: 24.sp)),
              SizedBox(height: 8.h),
              Text(
                'لقد تم إعادة تعيين كلمة المرور الخاصة بك بنجاح.',
                textAlign: TextAlign.center,
                style: TextStyles.s16w400solidgray.copyWith(fontSize: 16.sp),
              ),
              SizedBox(height: 24.h),
              CustomButton(
                width: 183.w,
                text: 'تسجيل الدخول',
                onPressed: () {
                  context.pushNamed(Routes.loginView);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

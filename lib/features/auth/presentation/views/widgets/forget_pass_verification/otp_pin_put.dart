import 'package:alquran/core/resources/colors.dart';
import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpPinPut extends StatelessWidget {
  const OtpPinPut({
    super.key,
    required this.otpController,
    required this.onCompleted,
  });

  final TextEditingController otpController;
  final void Function(String) onCompleted;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 48.w,
      height: 48.h,
      textStyle: TextStyles.s24w700black.copyWith(fontSize: 24.sp),
      decoration: BoxDecoration(
        color: AppColors.offWhite,
        borderRadius: BorderRadius.circular(12.r),
      ),
    );

    final filledPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        border: Border.all(
          color: AppColors.accentBrown,
          width: 2.w,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        border: Border.all(
          color: AppColors.accentBrown,
          width: 2.w,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
    );

    final errorPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        border: Border.all(
          color: Colors.red,
          width: 2.w,
        ),
        borderRadius: BorderRadius.circular(12.r),
      ),
    );

    return Pinput(
      controller: otpController,
      length: 6,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      errorPinTheme: errorPinTheme,
      submittedPinTheme: filledPinTheme,
      onCompleted: onCompleted,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "OTP لا يمكن أن يكون فارغاً!";
        } else if (value.length < 6) {
          return "يرجى إدخال رمز OTP صالح";
        }
        return null;
      },
    );
  }
}

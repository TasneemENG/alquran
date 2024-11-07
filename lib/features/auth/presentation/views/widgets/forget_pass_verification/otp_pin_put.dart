// lib/features/auth/presentation/views/widgets/otp_pin_put.dart
import 'package:alquran/core/resources/colors.dart';
import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/material.dart';
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
      width: 48,
      height: 48,
      textStyle: TextStyles.s24w700black,
      decoration: BoxDecoration(
        color: AppColors.offWhite,
        borderRadius: BorderRadius.circular(12),
      ),
    );

    final filledPinTheme = defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration?.copyWith(
          border: Border.all(
            color: AppColors.accentBrown,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
    )
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        border: Border.all(
          color: AppColors.accentBrown,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
    );

    final errorPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        border: Border.all(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.circular(12),
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

import 'package:alquran/core/resources/styles.dart';
import 'package:alquran/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'back_button.dart';
import 'otp_pin_put.dart';
import 'success_dialog.dart';
import 'title_description.dart';

class VerificationBody extends StatefulWidget {
  const VerificationBody({super.key});

  @override
  State<VerificationBody> createState() => _VerificationBodyState();
}

class _VerificationBodyState extends State<VerificationBody> {
  final TextEditingController otpController = TextEditingController();

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) => const SuccessDialog(),
    );
  }

  void _verifyOtp() {
    final otp = otpController.text;
    if (otp.isNotEmpty && otp.length == 6) {
      _showSuccessDialog();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("الرجاء إدخال رمز OTP صالح.")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const BuildBackButton(),
              const SizedBox(height: 30),
              const TitleDescription(
                title: 'رمز التحقق',
                description: 'أدخل الرمز الذي أرسلناه إلى رقمك 012345*****',
              ),
              const SizedBox(height: 30),
              OtpPinPut(
                otpController: otpController,
                onCompleted: (value) {
                  print("OTP Entered: $value");
                },
              ),
              const SizedBox(height: 60),
              CustomButton(
                text: 'تحقق',
                onPressed: _verifyOtp,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'لم تستلم الرمز؟',
                    style: TextStyles.s14w400solidgray,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add functionality to resend OTP
                    },
                    child: const Text(
                      ' إعادة ارسال',
                      style: TextStyles.s16w400brwon,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

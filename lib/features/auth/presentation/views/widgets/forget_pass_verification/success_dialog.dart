import 'package:alquran/core/functions/helper.dart';
import 'package:alquran/core/manage_routes/routes.dart';
import 'package:alquran/core/resources/colors.dart';
import 'package:alquran/core/resources/styles.dart';
import 'package:alquran/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 327,
          height: 350,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: AppColors.offWhite,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check,
                  color: AppColors.accentBrown,
                  size: 48,
                ),
              ),
              const SizedBox(height: 16),
              const Text('تم بنجاح', style: TextStyles.s24w700black),
              const SizedBox(height: 8),
              const Text('لقد تم إعادة تعيين كلمة المرور الخاصة بك بنجاح.',
                  textAlign: TextAlign.center, style: TextStyles.s16w400solidgray),
              const SizedBox(height: 24),
              CustomButton(
                width: 183,
                  text: 'تسجيل الدخول',
                  onPressed: () {
                    context.pushNamed(Routes.loginView);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
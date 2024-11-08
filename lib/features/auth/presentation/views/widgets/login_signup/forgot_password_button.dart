import 'package:alquran/core/functions/helper.dart';
import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/manage_routes/routes.dart';
class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          onPressed: () {
            context.pushNamed(Routes.forgetPasswordView);
          },
          child: const Text(
            'نسيت كلمة المرور؟',
            style: TextStyles.s14w400brown,
          ),
        ),
      ),
    );
  }
}

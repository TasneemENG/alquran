import 'package:alquran/core/functions/helper.dart';
import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/manage_routes/routes.dart';
class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          onPressed: () {
            context.pushNamed(Routes.forgetPasswordView);
          },
          child: Text(
            'نسيت كلمة المرور؟',
            style: TextStyles.s14w400brown,
          ),
        ),
      ),
    );
  }
}

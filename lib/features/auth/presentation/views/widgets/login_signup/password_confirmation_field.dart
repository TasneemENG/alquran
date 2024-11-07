import 'package:alquran/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
class PasswordConfirmationField extends StatelessWidget {
  final TextEditingController controller;
  final TextEditingController passwordController;

  const PasswordConfirmationField({
    super.key,
    required this.controller,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      label: 'تأكيد كلمة المرور',
      hintText: 'أدخل كلمة المرور مرة أخرى',
      isPassword: true,
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'يرجى إدخال كلمة المرور';
        } else if (value != passwordController.text) {
          return 'كلمتا المرور غير متطابقتين';
        }
        return null;
      },
    );
  }
}

import 'package:alquran/core/functions/helper.dart';
import 'package:alquran/core/manage_routes/routes.dart';
import 'package:alquran/core/widgets/custom_button.dart';
import 'package:alquran/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'forgot_password_button.dart';

class LoginContent extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextField(
              label: 'البريد الإلكتروني',
              hintText: 'أدخل بريدك الإلكتروني',
              controller: emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'يرجى إدخال البريد الإلكتروني';
                }
                return null;
              },
            ),
            const SizedBox(height: 25.0),
            CustomTextField(
              label: 'كلمة المرور',
              hintText: 'أدخل كلمة المرور',
              isPassword: true,
              controller: passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'يرجى إدخال كلمة المرور';
                }
                return null;
              },
            ),
            SizedBox(height: 10.0),
            ForgotPasswordButton(),
            SizedBox(height: 30.0),
            CustomButton(text: 'تسجيل الدخول', onPressed: () {context.pushNamed(Routes.watingView);}),
          ],
        ),
      ),
    );
  }
}

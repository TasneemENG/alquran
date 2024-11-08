import 'package:alquran/core/functions/helper.dart';
import 'package:alquran/core/manage_routes/routes.dart';
import 'package:alquran/core/widgets/custom_button.dart';
import 'package:alquran/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'forgot_password_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Email field
              CustomTextField(
                label: 'البريد الإلكتروني',
                hintText: 'أدخل بريدك الإلكتروني',
                controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'يرجى إدخال البريد الإلكتروني';
                  }
                  // Email validation (basic check)
                  if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$").hasMatch(value)) {
                    return 'يرجى إدخال بريد إلكتروني صحيح';
                  }
                  return null;
                },
              ),
              SizedBox(height: 25.h),

              // Password field
              CustomTextField(
                label: 'كلمة المرور',
                hintText: 'أدخل كلمة المرور',
                isPassword: true,
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'يرجى إدخال كلمة المرور';
                  }
                  // Password strength validation (basic check)
                  if (value.length < 6) {
                    return 'كلمة المرور يجب أن تكون مكونة من 6 أحرف على الأقل';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.h),

              // Forgot password button
              const ForgotPasswordButton(),
              SizedBox(height: 30.h),

              // Login button
              CustomButton(
                text: 'تسجيل الدخول',
                onPressed: () {
                  if (formKey.currentState?.validate() ?? false) {
                    // Navigate to waiting view if validation passes
                    context.pushNamed(Routes.watingView);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

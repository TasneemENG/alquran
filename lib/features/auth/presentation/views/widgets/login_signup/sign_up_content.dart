import 'package:alquran/core/functions/helper.dart';
import 'package:alquran/core/manage_routes/routes.dart';
import 'package:alquran/core/widgets/custom_button.dart';
import 'package:alquran/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'password_confirmation_field.dart';
import 'terms_checkbox.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // For responsive design

class SignUpContent extends StatefulWidget {
  const SignUpContent({super.key});

  @override
  _SignUpContentState createState() => _SignUpContentState();
}

class _SignUpContentState extends State<SignUpContent> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0.w),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Email input field
                CustomTextField(
                  label: 'البريد الإلكتروني',
                  hintText: 'أدخل بريدك الإلكتروني',
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'يرجى إدخال البريد الإلكتروني';
                    }
                    if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$")
                        .hasMatch(value)) {
                      return 'يرجى إدخال بريد إلكتروني صحيح';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 25.h),

                // Password input field
                CustomTextField(
                  label: 'كلمة المرور',
                  hintText: 'أدخل كلمة المرور',
                  isPassword: true,
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'يرجى إدخال كلمة المرور';
                    }
                    if (value.length < 6) {
                      return 'كلمة المرور يجب أن تكون مكونة من 6 أحرف على الأقل';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 25.h),

                // Password confirmation field
                PasswordConfirmationField(
                  controller: confirmPasswordController,
                  passwordController: passwordController,
                ),
                SizedBox(height: 20.h),

                // Terms and conditions checkbox
                TermsCheckbox(
                  isAccepted: isAccepted,
                  onChanged: (bool? value) {
                    setState(() {
                      isAccepted = value ?? false;
                    });
                  },
                ),
                SizedBox(height: 30.h),

                // Sign-up button
                CustomButton(
                  text: 'تسجيل الدخول',
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      if (!isAccepted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('يرجى قبول الشروط والأحكام'),
                          ),
                        );
                        return;
                      }
                      // Proceed with sign-up process
                      context.pushNamed(Routes.codeVerificationView);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

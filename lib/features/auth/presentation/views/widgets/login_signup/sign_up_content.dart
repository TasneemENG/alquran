import 'package:alquran/core/functions/helper.dart';
import 'package:alquran/core/manage_routes/routes.dart';
import 'package:alquran/core/widgets/custom_button.dart';
import 'package:alquran/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'password_confirmation_field.dart';
import 'terms_checkbox.dart';

class SignUpContent extends StatefulWidget {
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
          padding: const EdgeInsets.all(8.0),
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
              const SizedBox(height: 25.0),
              PasswordConfirmationField(
                controller: confirmPasswordController,
                passwordController: passwordController,
              ),
              const SizedBox(height: 20.0),
              TermsCheckbox(
                isAccepted: isAccepted,
                onChanged: (bool? value) {
                  setState(() {
                    isAccepted = value ?? false;
                  });
                },
              ),
              SizedBox(height: 30.0),
              CustomButton(text: 'تسجيل الدخول', onPressed: () {
                context.pushNamed(Routes.codeVerificationView);
              }),
            ],
          ),
        ),
      ),
    );
  }
}

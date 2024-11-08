import 'package:alquran/core/widgets/custom_button.dart';
import 'package:alquran/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'back_button.dart';
import 'title_description.dart';

class ForgetPasswordBody extends StatefulWidget {
  ForgetPasswordBody({super.key});

  static const double paddingValue = 16.0;
  static const double spacingValue = 30.0;

  final TextEditingController emailController = TextEditingController();

  @override
  State<ForgetPasswordBody> createState() => _ForgetPasswordBodyState();
}

class _ForgetPasswordBodyState extends State<ForgetPasswordBody> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: ForgetPasswordBody.paddingValue),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const BuildBackButton(),
              const SizedBox(height: 30),
              const TitleDescription(
                title: 'نسيت كلمة المرور؟',
                description: 'أدخل بريدك الإلكتروني لإعادة تعيين كلمة المرور الخاصة بك، وسنرسل لك رمز التأكيد',
              ),
              const SizedBox(height: 60),
              CustomTextField(
                label: 'البريد الإلكتروني',
                hintText: 'أدخل بريدك الإلكتروني',
                controller: widget.emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'يرجى إدخال البريد الإلكتروني';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              CustomButton(text: 'ارسال', onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:alquran/core/widgets/custom_button.dart';
import 'package:alquran/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'back_button.dart';
import 'title_description.dart';

class ForgetPasswordBody extends StatefulWidget {
  ForgetPasswordBody({super.key});

  static final double paddingValue = 16.w;
  static final double spacingValue = 30.h;

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
          padding: EdgeInsets.symmetric(horizontal: ForgetPasswordBody.paddingValue),
          child: Column(
            children: [
              SizedBox(height: 30.h),
              const BuildBackButton(),
              SizedBox(height: 30.h),
              const TitleDescription(
                title: 'نسيت كلمة المرور؟',
                description: 'أدخل بريدك الإلكتروني لإعادة تعيين كلمة المرور الخاصة بك، وسنرسل لك رمز التأكيد',
              ),
              SizedBox(height: 60.h),
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
              SizedBox(height: 30.h),
              CustomButton(text: 'ارسال', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}

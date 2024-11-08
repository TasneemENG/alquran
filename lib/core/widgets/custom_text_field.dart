import 'package:flutter/material.dart';
import '../../../../core/resources/colors.dart';
import '../resources/styles.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.isPassword = false,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyles.s16w500black,
        ),
        SizedBox(height: 8.h),
        SizedBox(
          height: 38.h,
          width: 358.w,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyles.s14w400solidgray,
              labelStyle: TextStyles.s14w400solidgray,
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              border: _buildBorder(AppColors.mediumGray, 1.0),
              enabledBorder: _buildBorder(AppColors.mediumGray, 1.0),
              errorStyle: TextStyles.s12w400gray,
            ),
            obscureText: isPassword,
            validator: validator,
            cursorColor: AppColors.accentBrown,
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _buildBorder(Color color, double width) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(color: color, width: width),
    );
  }
}

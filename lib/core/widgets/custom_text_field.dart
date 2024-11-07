import 'package:alquran/core/resources/colors.dart';
import 'package:flutter/material.dart';

import '../resources/styles.dart';

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
        const SizedBox(height: 8.0),
        Container(
          height: 38,
          width: 358,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              labelStyle: TextStyles.s14w400solidgray,
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all( 10.0),
              border: _buildBorder(AppColors.mediumGray, 1.0),
              enabledBorder: _buildBorder(AppColors.mediumGray, 1.0),
              errorStyle: TextStyles.s16w500black,
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

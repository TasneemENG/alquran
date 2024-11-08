import 'package:alquran/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomStepIndicator extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const CustomStepIndicator({
    Key? key,
    required this.currentStep,
    this.totalSteps = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalSteps, (index) {
        bool isCompleted = index < currentStep;
        bool isCurrent = index == currentStep;
        return Row(
          children: [
            // Circle for each step
            Container(
              width: 24.w,
              height: 24.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isCompleted ? AppColors.lightBrown : AppColors.white,
                border: Border.all(
                  color: AppColors.lightBrown,
                  width: 1.0,
                ),
              ),
              child: isCompleted
                  ? Icon(Icons.check, color: Colors.white, size: 20.sp)
                  : null,
            ),

            // Line between steps (omit for last step)
            if (index < totalSteps - 1)
              Container(
                width: 55.w,
                height: 1.h,
                color: AppColors.accentBrown,
              ),
          ],
        );
      }),
    );
  }
}

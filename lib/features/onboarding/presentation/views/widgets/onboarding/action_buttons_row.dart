import 'package:flutter/material.dart';
import 'action_button.dart';
import '../../../../../../core/resources/colors.dart';

class ActionButtonsRow extends StatelessWidget {
  final Function() onSkip;
  final Function() onContinue;

  const ActionButtonsRow({
    required this.onSkip,
    required this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 245,
      left: 16,
      right: 16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ActionButton(
            label: 'تخطي',
            borderColor: AppColors.mediumGray,
            textColor: AppColors.mediumGray,
            backgroundColor: Colors.transparent,
            onPressed: onSkip,
          ),
          ActionButton(
            label: 'متابعة',
            borderColor: AppColors.accentBrown,
            textColor: AppColors.accentBrown,
            backgroundColor: AppColors.white,
            onPressed: onContinue,
          ),
        ],
      ),
    );
  }
}

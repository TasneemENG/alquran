import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/material.dart';

class TermsCheckbox extends StatelessWidget {
  final bool isAccepted;
  final ValueChanged<bool?> onChanged;

  const TermsCheckbox({
    Key? key,
    required this.isAccepted,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      subtitle: Row(
        children: [
          Text(
            ' أوافق على',
            style: TextStyles.s14w400solidgray,
          ),
          GestureDetector(
            onTap: () {
              // Add functionality to open Terms of Service page
            },
            child: Text(
              ' شروط خدمة',
              style: TextStyles.s16w400brwon,
            ),
          ),
          Text(
            ' المنصة',
            style: TextStyles.s14w400solidgray,
          ),
          GestureDetector(
            onTap: () {
              // Add functionality to open Privacy Policy page
            },
            child: Text(
              ' وسياسة الخصوصية',
              style: TextStyles.s16w400brwon,
            ),
          ),
        ],
      ),
      value: isAccepted,
      onChanged: onChanged,
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: EdgeInsets.symmetric(vertical: 12.0),
      dense: true,
    );
  }
}

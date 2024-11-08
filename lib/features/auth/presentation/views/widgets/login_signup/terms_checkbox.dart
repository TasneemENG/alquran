import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/material.dart';

class TermsCheckbox extends StatelessWidget {
  final bool isAccepted;
  final ValueChanged<bool?> onChanged;

  const TermsCheckbox({
    super.key,
    required this.isAccepted,
    required this.onChanged,
  });

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

            },
            child: Text(
              ' شروط خدمة',
              style: TextStyles.s14w400brown,
            ),
          ),
          Text(
            ' المنصة',
            style: TextStyles.s14w400solidgray,
          ),
          GestureDetector(
            onTap: () {

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
      contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
      dense: true,
     );
  }
}

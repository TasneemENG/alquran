import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final Color borderColor;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const ActionButton({
    super.key,
    required this.label,
    required this.borderColor,
    required this.textColor,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 43,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(31),
        border: Border.all(width: 2, color: borderColor),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(31),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 20,
            color: textColor,
            fontFamily: 'ElMessiri',
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

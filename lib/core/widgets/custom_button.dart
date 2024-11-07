import 'package:flutter/material.dart';
import '../../../../core/resources/styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = 358.0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: 46.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(33.0),
          ),
          gradient: const RadialGradient(
            center: Alignment.topLeft,
            radius: 2.0,
            colors: [
              Color.fromRGBO(168, 80, 0, 0.8),
              Color.fromRGBO(82, 39, 0, 0.8),
            ],
          ),
          border: Border(
            top: BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyles.s18w600white,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

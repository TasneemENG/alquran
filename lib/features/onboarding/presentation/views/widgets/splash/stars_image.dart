import 'package:flutter/material.dart';

class StarsImage extends StatelessWidget {
  const StarsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 347,
      height: 136,
      child: Image.asset(
        "assets/images/stars.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
import 'package:flutter/widgets.dart';

class SplashImage extends StatelessWidget {
  const SplashImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 410,
      height: 550,
      child: Image.asset(
        "assets/images/splash.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
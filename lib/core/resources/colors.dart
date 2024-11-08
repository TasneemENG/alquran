import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryDark = Color(0xFF042030);
  static const Color secondaryDark = Color(0xFF101623);
  static const Color grayDark = Color(0xFF3D3D3D);
  static const Color white = Color(0xFFFFFFFF);
  static const Color offWhite = Color(0xFFF5F8FF);
  static const Color lightGray = Color(0xFFD8DADC);
  static const Color mediumGray = Color(0xFF777777);
  static const Color darkGray = Color(0xFF303030);
  static const Color yellow = Color(0xFFF5B304);
  static const Color black = Color(0xFF000000);
  static const Color semiTransparentBlack = Color(0xff000000b2);
  static const Color transparentWhite = Color(0xffffffffb2);
  static const Color accentBrown = Color(0xFFA85000);
  static const Color lightBrown = Color(0xFF522700);
  static const Color tan = Color(0xFFFCD53F);
  static const Color facebookBlue = Color(0xFF3C5A99);
  static const Color googleBlue = Color(0xFF4285F4);
  static const Color googleRed = Color(0xFFEB4335);
  static const Color googleYellow = Color(0xFFFBBC05);
  static const Color successGreen = Color(0xFF34A853);

  // Gradients
  static const LinearGradient linearGradientLightBrown = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFA85000),
      Color(0xFF522700),
    ],
  );

  static const LinearGradient linearGradientBrown = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF522700),
      Color(0xFFA85000),
    ],
  );

  static LinearGradient linearGradientOverlay = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      const Color(0xFFFFFFFF).withOpacity(0.2),
      const Color(0xFF000000).withOpacity(0.2),
    ],
  );

  static RadialGradient radialGradientOverlay = RadialGradient(
    center: Alignment.topLeft,
    radius: 1.0,
    colors: [
      const Color(0xFFA85000).withOpacity(0.8),
      const Color(0xFF522700).withOpacity(0.8),
    ],
  );

  static const Color offWhiteTranslucent = Color(0xffffffff80);
  static const Color lightOverlayBlack = Color(0xff0000004d);
  static const Color overlayBlack54 = Color(0xff00000054);
  static const Color lightGrayOverlay = Color(0xFFEDEEEF);
  static const Color pastelGray = Color(0xFFECEFF1);
  static const Color blueAccent = Color(0xFF54DAF5);
  static const Color lavender = Color(0xFFF5EFFB);
}



abstract class TextColors {
  static const red500 = Color(0xffd51a1a);
  static const solidGray = Color(0xff777777);
  static const Brown = Color(0xFFA85000);
  static const solidBrown = Color(0xFF522700);

  static const purple = Color(0xff5C649D);
  static const grey = Color(0xff8A8A8A);
  static const lightPurple = Color(0xff9467DD);

  static const grey500 = Color(0xffA0AEC0);
  static const grey200 = Color(0xffD9DFE6);
  static const lightgrey = Color(0xfff3f3f3);
  static const blue500 = Color(0xff1B85F3);
  static const green500 = Color(0xff3DD598);
  static const lightGrey600 = Color(0xffb3b3b3);
  static const white = Color(0xffFFFFFF);
  static const lightWhite = Color(0xFFFFFBFB);
  static const light2white = Color(0xFFFDFAFA);
  static const light3white = Color(0xFFFAFAFA);
  static const black = Color(0xff000000);
  static const orange = Color(0xffE07026);
  static const lightGrey = Color(0xffC7C7C7);
  static const mediumGrey = Color(0xff777777);
  static const darkGrey = Color(0xff333333);
  static const darkBlue = Color(0xff007489);
  static const lightGrey2 = Color(0xffCFCFCF);
  static const lightWhite2 = Color(0xffFAFAFA);
}

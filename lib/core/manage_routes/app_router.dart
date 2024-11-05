
import 'package:alquran/core/manage_routes/routes.dart';
import 'package:alquran/features/onboarding/presentation/views/splash_screen.dart';
import 'package:alquran/features/onboarding/presentation/views/onboarding_screen.dart';
import 'package:flutter/material.dart';

import 'route_animations.dart';

class AppRouter {
  Route<dynamic>? generateRouter(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      // splash
      case Routes.splashView:
        return RouteAnimations.buildPageRoute(
          const SplashScreen(),
          settings,
          TransitionType.slideFromRight,
        );
      case Routes.onboardingView:
        return RouteAnimations.buildPageRoute(
          const OnboardingScreen(),
          settings,
          TransitionType.fadeOut,
        );

      default:
        return null;
    }
    return null;
  }
}

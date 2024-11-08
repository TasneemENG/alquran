
import 'package:alquran/core/manage_routes/routes.dart';
import 'package:alquran/features/auth/presentation/views/forget_password_screen.dart';
import 'package:alquran/features/auth/presentation/views/vrification_screen.dart';
import 'package:alquran/features/auth/presentation/views/wating_screen.dart';
import 'package:alquran/features/home/presentation/views/MainScreen.dart';
import 'package:alquran/features/home/presentation/views/home_screen.dart';
import 'package:alquran/features/onboarding/presentation/views/splash_screen.dart';
import 'package:alquran/features/onboarding/presentation/views/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/views/login_signup_screen.dart';
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
      case Routes.loginView:
        return RouteAnimations.buildPageRoute(
          const LoginScreen(),
          settings,
          TransitionType.slideFromLeft,
        );
      case Routes.forgetPasswordView:
        return RouteAnimations.buildPageRoute(
          const ForgetPasswordScreen(),
          settings,
          TransitionType.slideFromLeft,
        );
      case Routes.forgetPasswordView:
        return RouteAnimations.buildPageRoute(
          const ForgetPasswordScreen(),
          settings,
          TransitionType.slideFromLeft,
        );
      case Routes.codeVerificationView:
        return RouteAnimations.buildPageRoute(
          const VrificationScreen(),
          settings,
          TransitionType.slideFromLeft,
        );
      case Routes.watingView:
        return RouteAnimations.buildPageRoute(
          const WatingScreen(),
          settings,
          TransitionType.slideFromLeft,
        );
      case Routes.homeView:
        return RouteAnimations.buildPageRoute(
          const MainScreen(),
          settings,
          TransitionType.slideFromLeft,
        );
      default:
        return null;
    }
    return null;
  }
}

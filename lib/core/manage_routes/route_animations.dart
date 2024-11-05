import 'package:flutter/material.dart';

enum TransitionType {
  slideFromBottom,
  slideFromLeft,
  slideFromRight,
  fadeOut,
  none,
}

abstract class PageTransition {
  Widget buildTransition(
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child, {
        Curve curve = Curves.easeInOut,
      });
}

class SlideFromBottomTransition implements PageTransition {
  @override
  Widget buildTransition(
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child, {
        Curve curve = Curves.easeInOut,
      }) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, 1.0),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: animation,
          curve: curve,
        ),
      ),
      child: child,
    );
  }
}

class SlideFromLeftTransition implements PageTransition {
  @override
  Widget buildTransition(
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child, {
        Curve curve = Curves.easeInOut,
      }) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1.0, 0.0),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: animation,
          curve: curve,
        ),
      ),
      child: child,
    );
  }
}

class SlideFromRightTransition implements PageTransition {
  @override
  Widget buildTransition(
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child, {
        Curve curve = Curves.easeInOut,
      }) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: animation,
          curve: curve,
        ),
      ),
      child: child,
    );
  }
}

class FadeTransitionWithScale implements PageTransition {
  @override
  Widget buildTransition(
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child, {
        Curve curve = Curves.easeInOut,
        double startScale = 0.95, // Customizable initial scale for subtle zoom
      }) {
    final fadeAnimation = CurvedAnimation(parent: animation, curve: curve);
    final scaleAnimation = Tween<double>(begin: startScale, end: 1.0).animate(fadeAnimation);

    return FadeTransition(
      opacity: fadeAnimation,
      child: ScaleTransition(
        scale: scaleAnimation,
        child: child,
      ),
    );
  }
}

class RouteAnimations {
  static PageRouteBuilder buildPageRoute(
      Widget page,
      RouteSettings settings,
      TransitionType transitionType, {
        Duration duration = const Duration(milliseconds: 300),
        Curve curve = Curves.decelerate,
      }) {
    PageTransition transition;

    switch (transitionType) {
      case TransitionType.slideFromBottom:
        transition = SlideFromBottomTransition();
        break;
      case TransitionType.slideFromLeft:
        transition = SlideFromLeftTransition();
        break;
      case TransitionType.slideFromRight:
        transition = SlideFromRightTransition();
        break;
      case TransitionType.fadeOut:
        transition = FadeTransitionWithScale(); // Use improved fade transition
        break;
      case TransitionType.none:
      default:
        return _buildNoTransition(settings, page);
    }

    return PageRouteBuilder(
      settings: settings,
      transitionDuration: duration,
      reverseTransitionDuration: duration,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return transition.buildTransition(
          animation,
          secondaryAnimation,
          child,
          curve: curve,
        );
      },
    );
  }

  static PageRouteBuilder _buildNoTransition(
      RouteSettings settings,
      Widget page,
      ) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => page,
    );
  }
}

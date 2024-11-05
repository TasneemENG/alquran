import 'package:alquran/core/functions/helper.dart';
import 'package:alquran/core/resources/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/manage_routes/routes.dart';
import 'quran_title.dart';
import 'splash_image.dart';
import 'stars_image.dart';
class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    navigateToHome(context);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.solidBrown,
            AppColors.semiTransparentOrange,
          ],
        ),
      ),
      child: const Stack(
        children: [
          Positioned(
            top: 76,
            left: 21,
            child: StarsImage(),
          ),
          Positioned(top: 244, left: 95, child: QuranTitle()),
          Positioned(top: 348, child: SplashImage()),
        ],
      ),
    );
  }
}
void navigateToHome(final BuildContext ctx) {
  Future.delayed(
    const Duration(milliseconds: 3000),
        () {
          ctx.pushNamed(Routes.onboardingView);
      // if (!mounted) return;
      // FirebaseAuth.instance.authStateChanges().listen((User? user) {
      //   if (!mounted) return;
      //   if (user == null) {
      //     GoRouter.of(context).go(Routers.auth);
      //   } else {
      //     GoRouter.of(context).go(Routers.bnb,);
      //   }
      // });

    },
  );
}
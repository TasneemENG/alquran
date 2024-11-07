import 'package:alquran/core/functions/helper.dart';
import 'package:alquran/core/manage_routes/routes.dart';
import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/material.dart';

class WatingBody extends StatefulWidget {
  const WatingBody({super.key});

  @override
  State<WatingBody> createState() => _WatingBodyState();
}

class _WatingBodyState extends State<WatingBody> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );

    _controller.forward();

    Future.delayed(const Duration(seconds: 3), () {
     // context.pushNamed(Routes.homeView);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: Column(
        children: [
          const SizedBox(height: 115),
          Center(
            child: Container(
              height: 450,
              width: 314,
              child: Image.asset('assets/images/quran.png'),
            ),
          ),
          const SizedBox(height: 30),
          Text(
            'تم ارسال طلبك',
            style: TextStyles.s24w600brown,
          ),
          const SizedBox(height: 30),
          Text(
            'يرجى الانتظار..\nسيقوم المسؤولون بتسكينك مع أحد المحفظين',
            style: TextStyles.s16w500black,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

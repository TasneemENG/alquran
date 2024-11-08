import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildBackButton extends StatelessWidget {
  const BuildBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SizedBox(
            width: 30.w,
            height: 30.h,
            child: Image.asset('assets/images/back_icon.png'),
          ),
        ),
      ],
    );
  }
}

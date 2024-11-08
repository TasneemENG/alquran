import 'package:flutter/material.dart';
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
            width: 30,
            height: 30,
            child: Image.asset('assets/images/back icon.png'),
          ),
        ),

      ],
    );
  }
}

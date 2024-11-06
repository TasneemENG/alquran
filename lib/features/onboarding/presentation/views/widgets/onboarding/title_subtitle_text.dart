import 'package:flutter/material.dart';

class TitleSubtitleText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final double topPosition;

  const TitleSubtitleText({
    required this.text,
    required this.style,
    required this.topPosition,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPosition,
      left: 10,
      right: 10,
      child: Center(
        child: Text(
          text,
          style: style,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,

        ),
      ),
    );
  }
}

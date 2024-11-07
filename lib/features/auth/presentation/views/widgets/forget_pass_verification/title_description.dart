import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/material.dart';
class TitleDescription extends StatelessWidget {
  final String title;
  final String description;

  const TitleDescription({super.key, required this.title, required this.description});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.right,
          style: TextStyles.s24w500brown,
        ),
        SizedBox(height: 30,),
        Text(
          description,
          textAlign: TextAlign.right,
          style: TextStyles.s16w400solidgray,
        ),
      ],
    );;
  }
}

import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/widgets.dart';

class QuranTitle extends StatelessWidget {
  const QuranTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 63,
      child: Text(
        'القران الكريم',
        style: TextStyles.quranTextStyle,
      ),
    );
  }
}
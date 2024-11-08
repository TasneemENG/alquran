import 'package:alquran/core/resources/styles.dart';
import 'package:flutter/widgets.dart';

class QuranTitle extends StatelessWidget {
  const QuranTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63,
      child: Center(
        child: Text(
          'القران الكريم',
          style: TextStyles.s40w600white,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

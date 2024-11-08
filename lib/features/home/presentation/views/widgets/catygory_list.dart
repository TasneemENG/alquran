import 'package:alquran/features/home/presentation/views/widgets/catygory_widget.dart';
import 'package:flutter/material.dart';
class CatygoryList extends StatelessWidget {
  const CatygoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CatygoryWidget(image: 'assets/images/quranicon.png', name: 'قرآن'),
        CatygoryWidget(image: 'assets/images/hadees.png', name: 'حديث'),
        CatygoryWidget(image: 'assets/images/elsalah.png', name: 'الصلاة'),
        CatygoryWidget(image: 'assets/images/eltakweem.png', name: 'التقويم'),

      ],
    );
  }
}

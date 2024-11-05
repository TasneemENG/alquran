import 'package:flutter/material.dart';
import 'core/manage_routes/app_router.dart';
import 'core/manage_routes/routes.dart';

void main() {
  runApp(const AlQuranApp());
}

class AlQuranApp extends StatelessWidget {
  const AlQuranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Al Quran',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.splashView,
      onGenerateRoute: AppRouter().generateRouter,
    );
  }
}

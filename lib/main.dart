import 'package:flutter/material.dart';
import 'package:team_collaboration_google_docs/core/utils/router.dart';
import 'package:team_collaboration_google_docs/feature/authentication/presentation/view/login_view.dart';
import 'package:team_collaboration_google_docs/feature/home/presentation/view/home_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromRGBO(36, 36, 36, 1),
      ),
      home: HomeScreenView(),
      routes: AppRouter.pageRoutes,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:team_collaboration_google_docs/core/utils/router.dart';
import 'package:team_collaboration_google_docs/feature/presentation/view/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginView() ,
      routes:AppRouter.pageRoutes,
    );
  }
}

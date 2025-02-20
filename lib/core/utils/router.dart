import 'package:flutter/material.dart';
import 'package:team_collaboration_google_docs/feature/presentation/view/register_view.dart';

class AppRouter{
  static Map<String,Widget Function(BuildContext)>pageRoutes={
   "register":(context)=>const RegisterView(),
  };
}
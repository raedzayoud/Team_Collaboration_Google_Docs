import 'package:flutter/material.dart';
import 'package:team_collaboration_google_docs/feature/authentication/presentation/view/register_view.dart';

class Signup extends StatelessWidget {
  const Signup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
      onTap: () {
        Navigator.of(context).pushReplacementNamed("register");
      },
      child: Text(
        "Don't have an account? Sign up",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
    ));
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:team_collaboration_google_docs/feature/authentication/presentation/view/widgets/content_body_login.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    //String? errorMessage;

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: content_body_login(
              formKey: _formKey,
              email: email,
              password: password,
            ),
          ),
        ],
      ),
    );
  }
}

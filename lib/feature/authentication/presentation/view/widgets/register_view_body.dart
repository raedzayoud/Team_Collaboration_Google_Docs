import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_collaboration_google_docs/feature/authentication/presentation/view/widgets/content_body_register.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController fullname = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //if (errorMessage != null) CustomError(errorMessage: errorMessage!),
        Expanded(
          child: content_body_register(
            formKey: _formKey,
            email: email,
            fullname: fullname,
            password: password,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:team_collaboration_google_docs/core/utils/assets.dart';
import 'package:team_collaboration_google_docs/core/utils/function/validator.dart';
import 'package:team_collaboration_google_docs/feature/authentication/presentation/view/widgets/custom_button.dart';
import 'package:team_collaboration_google_docs/feature/authentication/presentation/view/widgets/custom_image.dart';
import 'package:team_collaboration_google_docs/feature/authentication/presentation/view/widgets/custom_text_field.dart';
import 'package:team_collaboration_google_docs/feature/authentication/presentation/view/widgets/custom_title.dart';
import 'package:team_collaboration_google_docs/feature/authentication/presentation/view/widgets/have_account.dart';

class content_body_register extends StatelessWidget {
  const content_body_register({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.email,
    required this.fullname,
    required this.password,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final TextEditingController email;
  final TextEditingController fullname;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImage(
                  url: AssetsImage.docs,
                ),
                CustomTitle(
                  title: "Register",
                  subtitle: "Welcome back to the app",
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                const Text(
                  "Email Address",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  obscureText: false,
                  validator: (val) {
                    return validateEmail(val);
                  },
                  controller: email,
                  hintText: "Enter your email",
                  suffixIcon: Icon(Icons.email),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Full Name ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  obscureText: false,
                  validator: (val) {
                    return validateFullName(val);
                  },
                  controller: fullname,
                  hintText: "Enter your full name ",
                  suffixIcon: Icon(Icons.person),
                ),
                SizedBox(height: 10),
                const Text(
                  "Password",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                CustomTextField(
                  obscureText: true,
                  validator: (val) {
                    return validatePassword(val);
                  },
                  controller: password,
                  hintText: "Enter your password",
                  suffixIcon: Icon(Icons.lock),
                ),
                SizedBox(height: 30),
                CustomButton(
                  text: "Register",
                  onPressed: () {
                    // if (_formKey.currentState!.validate()) {
                    //   BlocProvider.of<AuthenticationCubit>(context)
                    //       .register(email.text, password.text, fullname.text);
                    // }
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                Have_Account(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

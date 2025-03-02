import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hintText;
  final Widget suffixIcon;
  final bool obscureText;
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.suffixIcon,
      required this.validator,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        obscureText: obscureText,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              borderSide:
                  BorderSide(color: Colors.grey), // Border color when focused
            ),
            suffixIcon: suffixIcon,
            hintText: hintText,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text_field.dart';

class SignupTextFields extends StatelessWidget {
  const SignupTextFields(
      {super.key,
      required this.firstnameController,
      required this.lastnameController,
      required this.emailController,
      required this.passwordController});
  final TextEditingController firstnameController;
  final TextEditingController lastnameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hintText: 'Firstname',
          txtController: firstnameController,
        ),
        const SizedBox(height: 20),
        CustomTextField(
          hintText: 'Lastname',
          txtController: lastnameController,
        ),
        const SizedBox(height: 20),
        CustomTextField(
          hintText: 'Email Address',
          txtController: emailController,
        ),
        const SizedBox(height: 20),
        CustomTextField(
          hintText: 'Password',
          txtController: passwordController,
          obscureText: true,
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}

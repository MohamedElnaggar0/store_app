import 'package:flutter/material.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text_widgets.dart';

class SigninPasswordViewBody extends StatelessWidget {
  const SigninPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 80),
          CustomText('Sign in'),
          const SizedBox(height: 20),
          CustomTextField(
            hintText: 'Password',
            obscureText: true,
          ),
          const SizedBox(height: 20),
          CustomButton(
            text: 'Continue',
          ),
          const SizedBox(height: 10),
          CustomTextWidgets(text: 'Forgot Password? ', clickableText: 'Reset'),
        ],
      ),
    );
  }
}

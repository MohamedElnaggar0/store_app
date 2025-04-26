import 'package:flutter/material.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text_field.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          CustomText('Sign in'),
          CustomTextField(
            hintText: 'Email Address',
          ),
        ],
      ),
    );
  }
}

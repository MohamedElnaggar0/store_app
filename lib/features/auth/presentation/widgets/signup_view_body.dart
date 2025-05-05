import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/configs/app_router.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text_widgets.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          CustomText(
            'Create Account',
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 20),
          CustomTextField(hintText: 'Firstname'),
          const SizedBox(height: 20),
          CustomTextField(hintText: 'Lastname'),
          const SizedBox(height: 20),
          CustomTextField(hintText: 'Email Address'),
          const SizedBox(height: 20),
          CustomTextField(hintText: 'Password'),
          const SizedBox(height: 40),
          CustomButton(
            text: 'Continue',
            onTap: () => GoRouter.of(context).push(AppRouter.kSigninEmailView),
          ),
          const SizedBox(height: 40),
          CustomTextWidgets(
            text: 'Forgot Password ? ',
            clickableText: 'Reset',
            onTap: () =>
                GoRouter.of(context).push(AppRouter.kForgotPasswordView),
          ),
        ],
      ),
    );
  }
}

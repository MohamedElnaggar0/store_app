import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/configs/app_router.dart';
import 'package:store_app/core/widgets/basic_app_bar.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text_widgets.dart';

class SigninPasswordViewBody extends StatelessWidget {
  const SigninPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BasicAppBar(
            hideBack: false,
          ),
          SizedBox(height: 10),
          CustomText(
            'Sign in',
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
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
          CustomTextWidgets(
              text: 'Forgot Password? ',
              clickableText: 'Reset',
              onTap: () {
                GoRouter.of(context).push(AppRouter.kForgotPasswordView);
              }),
        ],
      ),
    );
  }
}

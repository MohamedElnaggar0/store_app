import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/configs/router/app_router.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text_widgets.dart';
import 'package:store_app/features/auth/presentation/widgets/signup_text_fields.dart';

class SignupViewBody extends StatelessWidget {
  SignupViewBody({super.key});

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const CustomText(
            'Create Account',
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 20),
          SignupTextFields(
            firstnameController: firstnameController,
            lastnameController: lastnameController,
            emailController: emailController,
            passwordController: passwordController,
          ),
          CustomButton(
            text: 'Continue',
            onTap: () => GoRouter.of(context).push(
              AppRouter.kGenderAndAgeSelectionView,
              extra: {
                'firstName': firstnameController.text,
                'lastName': lastnameController.text,
                'email': emailController.text,
                'password': passwordController.text,
              },
            ),
          ),
          const SizedBox(height: 40),
          CustomTextWidgets(
            text: 'Forgot Password ? ',
            clickableText: 'Reset',
            onTap: () => GoRouter.of(context).push(
              AppRouter.kForgotPasswordView,
            ),
          ),
        ],
      ),
    );
  }
}

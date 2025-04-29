import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/configs/app_router.dart';
import 'package:store_app/core/widgets/custom_back_botton.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text_field.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          CustomBackBotton(
            onTap: () {
              GoRouter.of(context).go(AppRouter.kSigninPasswordView);
            },
          ),
          const SizedBox(height: 20),
          CustomText('Forgot Password'),
          const SizedBox(height: 20),
          CustomTextField(hintText: 'Enter Email Address'),
          const SizedBox(height: 20),
          CustomButton(
            text: 'Continue',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

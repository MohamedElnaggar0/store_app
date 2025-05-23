import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/configs/router/app_router.dart';
import 'package:store_app/features/auth/data/models/user_signin_req.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text_widgets.dart';

class SigninEmailViewBody extends StatelessWidget {
  SigninEmailViewBody({super.key});
  final emailController = TextEditingController();
  final UserSigninReq userSigninReq = UserSigninReq();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 80),
          const CustomText(
            'Sign in',
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hintText: 'Email Address',
            txtController: emailController,
          ),
          const SizedBox(height: 20),
          CustomButton(
            text: 'Continue',
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.kSigninPasswordView,
                extra: UserSigninReq(
                  email: emailController.text,
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          CustomTextWidgets(
            text: 'Dont have an Account? ',
            clickableText: 'Create One',
            onTap: () {
              GoRouter.of(context).push(AppRouter.kSignupView);
            },
          ),
        ],
      ),
    );
  }
}

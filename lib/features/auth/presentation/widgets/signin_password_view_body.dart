import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/configs/router/app_router.dart';
import 'package:store_app/features/auth/data/models/user_signin_req.dart';
import 'package:store_app/features/auth/domain/usecases/signin_usecase.dart';
import 'package:store_app/features/auth/presentation/blocs/button_cubit/button_cubit.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text_widgets.dart';

class SigninPasswordViewBody extends StatelessWidget {
  SigninPasswordViewBody({super.key});
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final UserSigninReq userSigninReq =
        GoRouterState.of(context).extra as UserSigninReq;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            'Sign in',
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hintText: 'Password',
            obscureText: true,
            txtController: passwordController,
          ),
          const SizedBox(height: 20),
          BlocProvider(
            create: (context) => ButtonCubit(),
            child: BlocListener<ButtonCubit, ButtonState>(
              listener: (context, state) {
                if (state is ButtonSuccess) {
                  GoRouter.of(context).push(AppRouter.kHomeView);
                }
              },
              child: BlocBuilder<ButtonCubit, ButtonState>(
                builder: (context, state) {
                  if (state is ButtonLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is ButtonFailure) {
                    return const Center(
                      child: Text('error'),
                    );
                  }
                  return CustomButton(
                    text: 'Log In',
                    onTap: () {
                      context.read<ButtonCubit>().clickButton(
                          usecase: SigninUsecase(),
                          params: UserSigninReq(
                            email: userSigninReq.email,
                            password: passwordController.text,
                          ));
                    },
                  );
                },
              ),
            ),
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

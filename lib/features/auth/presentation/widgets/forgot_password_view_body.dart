import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/configs/router/app_router.dart';
import 'package:store_app/features/auth/domain/usecases/change_password_usecase.dart';
import 'package:store_app/features/auth/presentation/blocs/button_cubit/button_cubit.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text_field.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const CustomText(
            'Forgot Password',
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hintText: 'Enter Email Address',
            txtController: emailController,
          ),
          const SizedBox(height: 20),
          BlocProvider(
            create: (context) => ButtonCubit(),
            child: BlocListener<ButtonCubit, ButtonState>(
              listener: (context, state) {
                if (state is ButtonSuccess) {
                  GoRouter.of(context).push(AppRouter.kSendToEmailView);
                }
              },
              child: BlocBuilder<ButtonCubit, ButtonState>(
                builder: (context, state) {
                  if (state is ButtonLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is ButtonFailure) {
                    return Center(child: Text(state.message));
                  }
                  return CustomButton(
                    text: 'Continue',
                    onTap: () {
                      context.read<ButtonCubit>().clickButton(
                          params: emailController.text,
                          usecase: ChangePasswordUsecase());
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

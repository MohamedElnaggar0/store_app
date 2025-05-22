import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/configs/router/app_router.dart';
import 'package:store_app/core/widgets/basic_app_bar.dart';
import 'package:store_app/features/auth/data/models/user_creation_req.dart';
import 'package:store_app/features/auth/domain/usecases/signup_usecase.dart';
import 'package:store_app/features/auth/presentation/blocs/button_cubit/button_cubit.dart';
import 'package:store_app/features/auth/presentation/widgets/age_selection.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text.dart';
import 'package:store_app/features/auth/presentation/widgets/gender_selection.dart';

class GenderAndAgeSelectionViewBody extends StatelessWidget {
  const GenderAndAgeSelectionViewBody(
      {super.key, required this.userCreationReq});
  final UserCreationReq userCreationReq;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BasicAppBar(),
          const SizedBox(height: 20),
          const CustomText('Tell us About Yourself',
              fontSize: 24, fontWeight: FontWeight.normal),
          const SizedBox(height: 20),
          const GenderSelection(),
          const SizedBox(height: 20),
          const CustomText(
            'How old are you ?',
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
          const SizedBox(height: 20),
          const AgeSelection(),
          const Spacer(),
          BlocProvider(
            create: (context) => ButtonCubit(),
            child: BlocListener<ButtonCubit, ButtonState>(
              listener: (context, state) {
                if (state is ButtonSuccess) {
                  GoRouter.of(context).go(AppRouter.kSigninEmailView);
                }
              },
              child: BlocBuilder<ButtonCubit, ButtonState>(
                builder: (context, state) {
                  if (state is ButtonLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (state is ButtonFailure) {
                    return const Center(child: Text('there is an error'));
                  }

                  return CustomButton(
                    text: 'Finish',
                    onTap: () {
                      context.read<ButtonCubit>().clickButton(
                            usecase: SignupUsecase(),
                            params: userCreationReq,
                          );
                    },
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

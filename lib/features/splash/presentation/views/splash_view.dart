import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/configs/app_color.dart';
import 'package:store_app/core/configs/app_router.dart';
import 'package:store_app/features/splash/presentation/bloc/cubit/splash_cubit.dart';
import 'package:store_app/features/splash/presentation/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is Authenticated) {
            return GoRouter.of(context).go(AppRouter.kSigninEmailView);
          }
        },
        child: const Scaffold(
          backgroundColor: AppColor.primaryColor,
          body: SplashViewBody(),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:store_app/core/widgets/basic_app_bar.dart';
import 'package:store_app/features/auth/presentation/widgets/signin_password_view_body.dart';

class SigninPasswordView extends StatelessWidget {
  const SigninPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BasicAppBar(),
      body: SigninPasswordViewBody(),
    );
  }
}

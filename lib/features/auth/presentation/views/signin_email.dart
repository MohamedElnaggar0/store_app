import 'package:flutter/material.dart';
import 'package:store_app/features/auth/presentation/widgets/signin_view_body.dart';

class SigninEmailView extends StatelessWidget {
  const SigninEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SigninEmailViewBody(),
    );
  }
}

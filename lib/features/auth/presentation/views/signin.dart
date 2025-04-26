import 'package:flutter/material.dart';
import 'package:store_app/features/auth/presentation/widgets/signin_view_body.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SigninViewBody(),
    );
  }
}

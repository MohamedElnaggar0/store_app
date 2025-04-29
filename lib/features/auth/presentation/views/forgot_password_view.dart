import 'package:flutter/material.dart';
import 'package:store_app/features/auth/presentation/widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgotPasswordViewBody(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:store_app/core/widgets/basic_app_bar.dart';
import 'package:store_app/features/auth/presentation/widgets/send_to_email_view_body.dart';

class SendToEmailView extends StatelessWidget {
  const SendToEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BasicAppBar(),
      body: SendToEmailViewBody(),
    );
  }
}

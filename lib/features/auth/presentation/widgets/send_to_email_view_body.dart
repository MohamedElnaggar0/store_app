import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text.dart';
import 'package:store_app/gen/assets.gen.dart';

import '../../../../core/configs/router/app_router.dart';

class SendToEmailViewBody extends StatelessWidget {
  const SendToEmailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Spacer(),
          Image.asset(
            Assets.images.sendIcon.path,
            height: 100,
            width: 100,
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: CustomText(
              'We Sent you an Email to reset \n              your password.',
              fontSize: 24,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            text: 'Return to Login',
            onTap: () {
              GoRouter.of(context).go(AppRouter.kSigninEmailView);
            },
          ),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}

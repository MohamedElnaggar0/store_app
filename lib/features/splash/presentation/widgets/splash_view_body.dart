import 'package:flutter/material.dart';
import 'package:store_app/gen/assets.gen.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(Assets.images.logo1.path),
    );
  }
}

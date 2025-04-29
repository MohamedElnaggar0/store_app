import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/gen/assets.gen.dart';

class CustomBackBotton extends StatelessWidget {
  const CustomBackBotton({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        Assets.svg.backBotton,
        height: 40,
        width: 40,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:store_app/core/configs/theme/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap, this.height});
  final String text;
  final Function()? onTap;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          minimumSize: Size.fromHeight(height ?? 50)),
      onPressed: onTap,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.text,
      {super.key, required this.fontSize, required this.fontWeight});
  final String text;
  final int fontSize;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize.toDouble(),
        fontWeight: fontWeight,
        fontFamily: 'CircularStd',
      ),
    );
  }
}

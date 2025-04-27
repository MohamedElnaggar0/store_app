import 'package:flutter/material.dart';

class CustomTextWidgets extends StatelessWidget {
  const CustomTextWidgets(
      {super.key, required this.text, required this.clickableText});
  final String text;
  final String clickableText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
              color: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .color
                  // ignore: deprecated_member_use
                  ?.withOpacity(0.75)),
        ),
        GestureDetector(
            child: Text(
          clickableText,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )),
      ],
    );
  }
}

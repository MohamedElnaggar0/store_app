import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.onChanged, required this.hintText});
  final Function(String)? onChanged;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      onChanged: onChanged,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: hintText,
        isDense: true,
      ),
    );
  }
}

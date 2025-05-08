import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.onChanged,
      required this.hintText,
      this.obscureText,
      this.txtController});
  final Function(String)? onChanged;
  final String hintText;
  final bool? obscureText;
  final TextEditingController? txtController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      obscureText: obscureText ?? false,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        isDense: true,
      ),
    );
  }
}

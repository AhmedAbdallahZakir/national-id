import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../helper/show_snack_bar.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.hintText,
    this.inputType,
    this.onChanged,
    this.obscureText = false,
  });
  Function(String)? onChanged;
  String? hintText;
  TextInputType? inputType;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      // textAlign: TextAlign.right,
      // textDirection: TextDirection.rtl,
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
        if (data.length != 14) {
          showSnackBar(
              context, "Invalid number. It should be exactly 14 digits long.");
        }
      },
      obscureText: obscureText!,
      onChanged: onChanged,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.text,
      this.suffixIcon,
      required this.keyboardType});
  final String text;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        suffixIconColor: Color(0xffC9CECF),
        hintText: text,
        hintStyle: TextStyles.bold13.copyWith(color: const Color(0xff949D9E)),
        // filled: true,
        fillColor: const Color(0xFFEFF3F3),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder({required}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Color(0xFFE6E9E9),
      ),
    );
  }
}

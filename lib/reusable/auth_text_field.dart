import 'package:flutter/material.dart';
import 'package:new_flutter_project/utils/colors.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscure,
  });

  final String hintText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (PointerDownEvent event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      style: const TextStyle(color: Colors.grey),
      obscureText: obscure ?? false,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[900],
        hintText: hintText,

        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(prefixIcon, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.grey),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}

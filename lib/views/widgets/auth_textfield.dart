import 'package:bank_app/utils/const_colors.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String?>? onChanged;
  final IconData? leading;
  final String hintPlaceHolder;
  final bool password;
  final String obscureText;

  const AuthTextField({
    Key? key,
    this.controller,
    this.onChanged,
    required this.leading,
    this.hintPlaceHolder = '',
    this.password = false,
    this.obscureText = '*',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: (BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(50))),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        obscureText: password,
        obscuringCharacter: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            leading,
            color: ConstColors.mainThemeColor,
          ),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding:
              const EdgeInsets.only(left: 20, bottom: 11, top: 11, right: 15),
          hintText: hintPlaceHolder,
        ),
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

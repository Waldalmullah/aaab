import 'package:flutter/material.dart';
import 'package:aaab/app/utils/constants.dart';

class LoginTextFieldWidget extends StatelessWidget {
  const LoginTextFieldWidget({
    this.controller,
    this.labelText,
    Key? key,
  }) : super(key: key);

  final String? labelText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          fillColor: AppColors().textField,
          filled: true,
          labelText: labelText,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}

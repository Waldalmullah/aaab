import 'package:aaab/app/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginForgotPasswordWidget extends StatelessWidget {
  const LoginForgotPasswordWidget({
    this.onTap,
    Key? key,
  }) : super(key: key);

  final Function? onTap;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {},
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Center(
            child: Text(
              'Forgot your password?',
              style: TextStyle(color: AppColors.textColor),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
}

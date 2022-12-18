import 'dart:ui';

import 'package:aaab/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingUpButtonWidget extends StatelessWidget {
  const SingUpButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 60),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffFFD683),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 70,
            child: Text(
              "Sign up",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors().textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

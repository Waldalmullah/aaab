import 'package:aaab/app/utils/constants.dart';
import 'package:flutter/material.dart';

class SingUpButtonWidget extends StatelessWidget {
  const SingUpButtonWidget(
      {Key? key, required this.onTap, required this.isLoading})
      : super(key: key);

  final Function onTap;
  final bool? isLoading;
  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => onTap(),
        child: Padding(
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
                child: isLoading == true
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: AppColors.textColor,
                        ),
                      )
                    : const Text(
                        "Sign up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
            ),
          ),
        ),
      );
}

import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/ui/views/want_it/want_it_view_model.dart';
import 'package:flutter/material.dart';

class WantItButtonWidget extends StatelessWidget {
  const WantItButtonWidget(
    this.model, {
    Key? key,
  }) : super(key: key);

  final WantItViewModel model;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => model.wantIt(),
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
                child: model.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(
                            color: AppColors.textColor),
                      )
                    : const Text(
                        "Want It!",
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

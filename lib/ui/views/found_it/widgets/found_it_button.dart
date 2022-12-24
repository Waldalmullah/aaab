import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/ui/views/found_it/found_it_view_model.dart';
import 'package:flutter/material.dart';

class FoundItButtonWidget extends StatelessWidget {
  const FoundItButtonWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final FoundItViewModel model;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => model.foundIt(),
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
                          color: AppColors.textColor,
                        ),
                      )
                    : const Text(
                        "Found It!",
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

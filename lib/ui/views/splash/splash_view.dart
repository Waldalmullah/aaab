import 'package:aaab/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './splash_view_model.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      ViewModelBuilder<SplashViewModel>.reactive(
        viewModelBuilder: () => SplashViewModel(context),
        onModelReady: (SplashViewModel model) async => model.init(),
        builder: (BuildContext context, SplashViewModel model, Widget? child) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/png/cat.png'),
                  const CircularProgressIndicator(color: AppColors.primary),
                ],
              ),
            ),
          );
        },
      );
}

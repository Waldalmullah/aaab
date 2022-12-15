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
        onModelReady: (SplashViewModel model) async => await model.init(),
        builder: (BuildContext context, SplashViewModel model, Widget? child) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/png/cat.png'),
                  CircularProgressIndicator(color: AppColors().primary),
                ],
              ),
            ),
          );
        },
      );
}

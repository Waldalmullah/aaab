import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './sign_up_view_model.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      ViewModelBuilder<SignUpViewModel>.reactive(
        viewModelBuilder: () => SignUpViewModel(context),
        onModelReady: (SignUpViewModel model) async => await model.init(),
        builder: (BuildContext context, SignUpViewModel model, Widget? child) {
          return Scaffold(
            appBar: AppBar(title: const Text("Sign in")),
            body: const Center(
              child: Text('SignUpView'),
            ),
          );
        },
      );
}

import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/ui/views/sing_up/widgets/sing_up_button.dart';
import 'package:aaab/ui/views/sing_up/widgets/sing_up_header.dart';
import 'package:aaab/ui/views/sing_up/widgets/sing_up_image.dart';
import 'package:aaab/ui/views/sing_up/widgets/sing_up_text_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './sing_up_view_model.dart';

class SingUpView extends StatelessWidget {
  const SingUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SingUpViewModel>.reactive(
      viewModelBuilder: () => SingUpViewModel(context),
      onModelReady: (SingUpViewModel model) async => await model.init(),
      builder: (BuildContext context, SingUpViewModel model, Widget? child) {
        return Scaffold(
          body: Column(
            children: [
              SingUpHeader(model: model),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingUpImage(model: model),
                      SingUpTextFieldWidget (title: 'Username', model: model, controller: model.userNameController),
                      SingUpTextFieldWidget (title: 'E-mail', model: model, controller: model.emailController),
                      SingUpTextFieldWidget (title: 'Governance', model: model, controller: model.governanceController),
                      SingUpTextFieldWidget (title: 'Birth day', model: model, controller: model.birthDayController),
                      SingUpTextFieldWidget (title: 'Password', model: model, controller: model.passwordController),
                      SingUpTextFieldWidget (title: 'Password confirmation', model: model, controller: model.confirmPasswordController),
                      const SingUpButtonWidget(),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

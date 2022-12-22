// ignore_for_file: depend_on_referenced_packages

import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/ui/views/login/widgets/login_forgot_password_button.dart';
import 'package:aaab/ui/views/login/widgets/login_logo_widget.dart';
import 'package:aaab/ui/views/login/widgets/login_pow_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './login_view_model.dart';
import 'widgets/login_text_feild_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(context),
        onModelReady: (LoginViewModel model) async => await model.init(),
        builder: (BuildContext context, LoginViewModel model, Widget? child) {
          return GestureDetector(
            onTap: () => model.removeFocus(),
            child: Scaffold(
              backgroundColor: AppColors.backgroundColor,
              body: ListView(
                children: [
                  const PowWidget(),
                  const LoginLogoWidget(),
                  LoginTextFieldWidget(labelText: 'Username', controller: model.emailController,),
                  LoginTextFieldWidget(labelText: 'Password', controller: model.passwordController, obscureText: true),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppColors.primary),
                        ),
                        onPressed: () => model.pushSingUp(),
                        child: const Text(
                          'Sign up',
                          style: TextStyle(color: AppColors.textColor),
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppColors.primary),
                        ),
                        onPressed: () => model.doLogin(),
                        child: Text(
                          'Login',
                          style: TextStyle(color: AppColors.textColor),
                        ),
                      ),
                    ],
                  ),
                  const LoginForgotPasswordWidget()
                ],
              ),
            ),
          );
        },
      );
}

import 'dart:async';

import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/router/router.dart';
import 'package:aaab/app/core/base_view_model.dart';
import 'package:aaab/app/services/AuthService.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends BaseViewModel {
  LoginViewModel(context) : super(context);
  Future<void> init() async {}

  final AuthService _authService = locator<AuthService>();

  Future<void> doLogin() async {
    if (_emailController.text.trim() == '') {
      showSnackBar('Please enter email.');
    } else if (_passwordController.text.trim() == '') {
      showSnackBar('Please enter password.');
    } else {
      String message = await _authService.signInWithEmailAndPassword(_emailController.text, _passwordController.text);

      if (message.contains('User Has Logged In')) {
        Duration _timer = const Duration(seconds: 3);
        Timer(_timer, () => replaceNamed('/home-view'));
      }
      showSnackBar(message);
    }
  }

  void pushSingUp() => pushNamed(const SingUpRoute().path);

  final TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;
}

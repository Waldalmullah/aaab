// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:async';

import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/router/router.dart';
import 'package:aaab/app/core/base_view_model.dart';
import 'package:aaab/app/services/AuthService.dart';

class SplashViewModel extends BaseViewModel {
  SplashViewModel(context) : super(context);

  final AuthService _authService = locator<AuthService>();
  void init() {
    Timer(_splashDuration, () async {
      if (!await _authService.hasUser()) replaceNamed(const LoginRoute().path);
      else replaceNamed(const HomeRoute().path);
    });
  }

  final Duration _splashDuration = const Duration(seconds: 2);
}

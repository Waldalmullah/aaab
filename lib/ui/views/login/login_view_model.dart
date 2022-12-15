import 'package:aaab/app/core/custom_base_view_model.dart';
import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/router/router.dart';
import 'package:aaab/app/services/router_service.dart';
import 'package:aaab/ui/views/login/login_view.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends BaseViewModel {
  LoginViewModel(context) : super(context);

  Future<void> init() async {}

  final RouterService _routerService = locator<RouterService>();

  void pushSignUpRoute() => pushNamed(const SignUpRoute().path);
}

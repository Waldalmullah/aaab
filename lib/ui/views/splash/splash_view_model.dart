import 'dart:async';

import 'package:aaab/app/router/router.dart';
import 'package:aaab/app/core/custom_base_view_model.dart';

class SplashViewModel extends BaseViewModel {
  SplashViewModel(context) : super(context);

  Future<void> init() async {
    Timer(_splashDuration, () {
      if (!_hasUser) replaceNamed(const LoginRoute().path);
    });
  }

  final bool _hasUser = false;
  final Duration _splashDuration = const Duration(seconds: 2);
}

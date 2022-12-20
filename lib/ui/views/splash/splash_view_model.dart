import 'dart:async';

import 'package:aaab/app/core/base_view_model.dart';
import 'package:aaab/app/router/router.dart';

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

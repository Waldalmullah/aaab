import 'dart:async';

import 'package:aaab/app/core/base_view_model.dart';
import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/models/User.dart';
import 'package:aaab/app/router/router.gr.dart';
import 'package:aaab/app/services/AuthService.dart';
import 'package:aaab/app/services/UserService.dart';
import 'package:flutter/material.dart';

class ProfileViewModel extends BaseViewModel {
  ProfileViewModel(context) : super(context);
  Future<void> init() async {
    String? uuid = await _authService.userId();

    if (uuid != null) {
      _user = await _userService.getUser(uuid);
    }

    toggleIsLoading();
    notifyListeners();
  }

  final AuthService _authService = locator<AuthService>();
  final UserService _userService = locator<UserService>();

  void changeIndex(int index) {
    if (_currentIndex != index) {
      if (index == 0) {
        replaceNamed(const HomeRoute().path);
      }
    }
  }

  void toggleIsLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  Future<void> logOut() async {
    showSnackBar(await _authService.signOut());
    Timer(const Duration(seconds: 3), () => replaceNamed(const LoginRoute().path));
  }

  int _currentIndex = 3;
  int get currentIndex => _currentIndex;

  late User? _user;
  User? get user => _user;

  bool _isLoading = true;
  bool get isLoading => _isLoading;
}

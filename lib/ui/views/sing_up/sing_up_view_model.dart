import 'dart:async';
import 'dart:io';

import 'package:aaab/app/core/base_view_model.dart';
import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/models/User.dart';
import 'package:aaab/app/router/router.dart';
import 'package:aaab/app/services/AuthService.dart';
import 'package:aaab/app/services/CloudStorageService.dart';
import 'package:aaab/app/services/UserService.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SingUpViewModel extends BaseViewModel {
  SingUpViewModel(context) : super(context);
  Future<void> init() async {}

  final AuthService _authService = locator<AuthService>();
  final UserService _userService = locator<UserService>();
  final CloudStorageService _cloudStorageService = locator<CloudStorageService>();

  void openCamera() async {
    _userImage = await _picker.pickImage(source: ImageSource.camera);
    notifyListeners();
  }

  void openGallery() async {
    _userImage = await _picker.pickImage(source: ImageSource.gallery);
    notifyListeners();
  }

  Future<String?> uploadFile(String userId) async {
    if (_userImage != null) {
      return await _cloudStorageService.uploadAnImage(File(_userImage!.path), userId, path: 'users/$userId/user_image.png');
    }
    return null;
  }

  void doSignUp() async {
    if (_userNameController.text.trim() == '') {
      showSnackBar('please add name');
    } else if (_emailController.text.trim() == '') {
      showSnackBar('please add email');
    } else if (_governanceController.text.trim() == '') {
      showSnackBar('please add governance');
    } else if (_birthDayController.text.trim() == '') {
      showSnackBar('please add birth day');
    } else if (_passwordController.text.trim() == '') {
      showSnackBar('please add password');
    } else if (_confirmPasswordController.text.trim() == '') {
      showSnackBar('please add password confirmation');
    } else if (_passwordController.text.trim() !=
        _confirmPasswordController.text.trim()) {
      showSnackBar('password mismatch, please re-enter');
    } else if (_userImage == null) {
      showSnackBar('profile image required');
    } else {
      toggleIsLoading();
      String message = await _authService.createUserWithEmailAndPassword(_emailController.text.trim(), _passwordController.text.trim());

      if (message.contains('User has been created successfully')) {
        String _userId = await _authService.userId() ?? '';
        String _email = _emailController.text.trim();
        String _name = _userNameController.text.trim();
        String _governance = _governanceController.text.trim();
        String _dob = _birthDayController.text.trim();
        String _imageLink = await uploadFile(_userId) ?? '';

        User? _user = await _userService.create(_userId , User(_email, _name, _governance, _dob, _imageLink));

        if (_user != null){
          showSnackBar('User created.');
          Timer(const Duration(seconds: 3), () => replaceNamed(const HomeRoute().path));
        }
      } else {
        showSnackBar(message);
      }
      toggleIsLoading();
    }
  }

  void toggleIsLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  final TextEditingController _userNameController = TextEditingController();
  TextEditingController get userNameController => _userNameController;

  final TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  final TextEditingController _governanceController = TextEditingController();
  TextEditingController get governanceController => _governanceController;

  final TextEditingController _birthDayController = TextEditingController();
  TextEditingController get birthDayController => _birthDayController;

  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;

  final TextEditingController _confirmPasswordController =
      TextEditingController();
  TextEditingController get confirmPasswordController =>
      _confirmPasswordController;

  final ImagePicker _picker = ImagePicker();
  ImagePicker get picker => _picker;

  XFile? _userImage;
  XFile? get userImage => _userImage;

  bool _isLoading = false;
  bool get isLoading => _isLoading;
}

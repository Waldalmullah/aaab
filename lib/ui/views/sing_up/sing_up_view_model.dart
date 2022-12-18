import 'package:aaab/app/core/custom_base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SingUpViewModel extends BaseViewModel {
  SingUpViewModel(context) : super(context);
  Future<void> init() async {}

  void openCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    uploadFile(image);
  }

  void openGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    uploadFile(image);
  }

  void uploadFile(XFile? image) {
    // TODO
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

  final TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController get confirmPasswordController => _confirmPasswordController;

  final ImagePicker _picker = ImagePicker();
  ImagePicker get picker => _picker;
}

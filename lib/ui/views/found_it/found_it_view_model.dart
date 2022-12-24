import 'dart:async';
import 'dart:io';

import 'package:aaab/app/core/base_view_model.dart';
import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/models/Post.dart';
import 'package:aaab/app/router/router.dart';
import 'package:aaab/app/services/AuthService.dart';
import 'package:aaab/app/services/CloudStorageService.dart';
import 'package:aaab/app/services/FireStoreService.dart';
import 'package:aaab/app/services/PostActivityService.dart';
import 'package:aaab/app/services/PostService.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FoundItViewModel extends BaseViewModel {
  FoundItViewModel(BuildContext context, Post post) : super(context) {
    _post = post;
  }
  Future<void> init() async {}

  final CloudStorageService _cloudStorageService =
      locator<CloudStorageService>();

  final FireStoreService _fireStoreService = locator<FireStoreService>();
  final AuthService _authService = locator<AuthService>();
  final PostActivityService _postActivityService =
      locator<PostActivityService>();

  Future<String?> uploadFile(String userId) async {
    if (_image != null) {
      return await _cloudStorageService.uploadAnImage(
          File(_image!.path), userId,
          path: 'posts/$userId/pet.png');
    }
    return null;
  }

  void openCamera() async {
    _image = await _picker.pickImage(source: ImageSource.camera);
    notifyListeners();
  }

  void openGallery() async {
    _image = await _picker.pickImage(source: ImageSource.gallery);
    notifyListeners();
  }

  final ImagePicker _picker = ImagePicker();
  ImagePicker get picker => _picker;

  XFile? _image;
  XFile? get image => _image;

  final TextEditingController description = TextEditingController();

  late Post _post;

  void toggleIsLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> foundIt() async {
    if (description.text.trim().isEmpty) {
      showSnackBar('Description required');
    } else {
      toggleIsLoading();
      String userId = _authService.user?.uid ?? '';
      await _postActivityService.foundIt(
        description: description.text,
        fromUserRef: _fireStoreService.instance.doc('/users/$userId'),
        postRef: _fireStoreService.instance.doc('/posts/${_post.id}'),
        userRef: _fireStoreService.instance.doc(_post.user!.path),
      );
      toggleIsLoading();
      showSnackBar('message sent');
      Timer(const Duration(seconds: 2), () {
        replaceNamed(const HomeRoute().path);
      });
    }
  }
}

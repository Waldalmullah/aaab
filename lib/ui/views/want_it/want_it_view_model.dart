import 'dart:async';

import 'package:aaab/app/core/base_view_model.dart';
import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/models/Post.dart';
import 'package:aaab/app/router/router.gr.dart';
import 'package:aaab/app/services/AuthService.dart';
import 'package:aaab/app/services/FireStoreService.dart';
import 'package:aaab/app/services/PostActivityService.dart';
import 'package:flutter/material.dart';

class WantItViewModel extends BaseViewModel {
  WantItViewModel(context, Post post) : super(context) {
    _post = post;
  }
  Future<void> init() async {}

  final PostActivityService _postActivityService =
      locator<PostActivityService>();
  final AuthService _authService = locator<AuthService>();
  final TextEditingController aboutMeTextEditingController =
      TextEditingController();
  final TextEditingController whyIWantToAdoptItTextEditingController =
      TextEditingController();
  final FireStoreService _fireStoreService = locator<FireStoreService>();

  wantIt() async {
    if (aboutMeTextEditingController.text.trim().isEmpty) {
      showSnackBar('please add about me.');
    } else if (whyIWantToAdoptItTextEditingController.text.trim().isEmpty) {
      showSnackBar('please add why I want to adopt it.');
    } else {
      String userId = _authService.user?.uid ?? '';
      toggleIsLoading();
      await _postActivityService.wantIt(
        description:
            '${aboutMeTextEditingController.text}, ${whyIWantToAdoptItTextEditingController.text}',
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

  late Post _post;

  void toggleIsLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
}

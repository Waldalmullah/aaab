import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:aaab/app/core/base_view_model.dart';
import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/models/PetType.dart';
import 'package:aaab/app/models/Post.dart';
import 'package:aaab/app/models/PostStatus.dart';
import 'package:aaab/app/router/router.dart';
import 'package:aaab/app/services/AuthService.dart';
import 'package:aaab/app/services/CloudStorageService.dart';
import 'package:aaab/app/services/FireStoreService.dart';
import 'package:aaab/app/services/PostService.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class CreatePostViewModel extends BaseViewModel {
  CreatePostViewModel(BuildContext context) : super(context);

  final CloudStorageService _cloudStorageService =
      locator<CloudStorageService>();
  final AuthService _authService = locator<AuthService>();
  final FireStoreService _fireStoreService = locator<FireStoreService>();
  final PostService _postService = locator<PostService>();

  final TextEditingController title = TextEditingController();
  final TextEditingController petName = TextEditingController();
  final TextEditingController contactNumber = TextEditingController();
  final TextEditingController description = TextEditingController();

  String? _petType;
  String? get petType => _petType;
  String? _selectedStatus;
  String? get selectedStatus => _selectedStatus;

  List<String> petTypes = [PetType.CAT.name, PetType.DOG.name];
  List<String> status = [PostStatus.LOST.name, PostStatus.ABANDONED.name];

  bool get isValid =>
      title.text != '' &&
      petName.text != '' &&
      contactNumber.text != '' &&
      contactNumber.text != '' &&
      description.text != '' &&
      _petType != null &&
      _selectedStatus != null;

  Future<void> init() async {}

  onPetTypeChange(String? change) {
    if (change != null) _petType = change;
    notifyListeners();
  }

  onStatusChange(String? change) {
    if (change != null) _selectedStatus = change;
    notifyListeners();
  }

  void openGallery() async {
    _image = await _picker.pickImage(source: ImageSource.gallery);
    notifyListeners();
  }

  void openCamera() async {
    _image = await _picker.pickImage(source: ImageSource.camera);
    notifyListeners();
  }

  Future<String?> uploadFile(String userId) async {
    if (_image != null) {
      const Uuid uuid = Uuid();
      String path = 'posts/$userId/${uuid.v1()}';
      return await _cloudStorageService
          .uploadAnImage(File(_image!.path), userId, path: path);
    }
    return null;
  }

  void onSubmit() async {
    if (_image == null) {
      showSnackBar("image required");
    } else if (title.text.trim() == '') {
      showSnackBar("title required");
    } else if (petName.text.trim() == '') {
      showSnackBar("pet name required");
    } else if (contactNumber.text.trim() == '') {
      showSnackBar("contact required");
    } else if (description.text.trim() == '') {
      showSnackBar("description required");
    } else if (_petType == null || _petType?.trim() == '') {
      showSnackBar("pet type required");
    } else if (_selectedStatus == null || _selectedStatus?.trim() == '') {
      showSnackBar("status required");
    } else {
      toggleIsLoading();
      String uuid = await _authService.userId() ?? '';
      String link = await uploadFile(uuid) ?? '';
      Post _post = Post(
        user: _fireStoreService.instance.doc('/users/$uuid'),
        title: title.text.trim(),
        status: PostStatus.values.firstWhere(
            (e) => describeEnum(e) == _selectedStatus!.trim().toUpperCase()),
        petName: petName.text.trim(),
        likes: 0,
        photo: link,
        description: description.text.trim(),
        date: Timestamp.now(),
      );

      showSnackBar(await _postService.createPost(_post));
      toggleIsLoading();
      Timer(const Duration(seconds: 3), () {
        replaceNamed(const HomeRoute().path);
      });
    }
  }

  void toggleIsLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  final ImagePicker _picker = ImagePicker();
  ImagePicker get picker => _picker;

  XFile? _image;
  XFile? get image => _image;

  bool _isLoading = false;
  bool get isLoading => _isLoading;
}

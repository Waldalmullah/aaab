import 'dart:io';

import 'package:aaab/app/core/base_view_model.dart';
import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/services/CloudStorageService.dart';
import 'package:image_picker/image_picker.dart';

class FoundItViewModel extends BaseViewModel {
  FoundItViewModel(context) : super(context);
  Future<void> init() async {}

  final CloudStorageService _cloudStorageService = locator<CloudStorageService>();

  Future<String?> uploadFile(String userId) async {
    if (_image != null) {
      return await _cloudStorageService.uploadAnImage(File(_image!.path), userId, path: 'posts/$userId/pet.png');
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
}

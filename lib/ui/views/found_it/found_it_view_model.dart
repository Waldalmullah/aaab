import 'package:aaab/app/core/base_view_model.dart';
import 'package:image_picker/image_picker.dart';

class FoundItViewModel extends BaseViewModel {
  FoundItViewModel(context) : super(context);
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

  final ImagePicker _picker = ImagePicker();
  ImagePicker get picker => _picker;
}

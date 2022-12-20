import 'package:aaab/app/core/base_view_model.dart';
import 'package:aaab/app/models/PetType.dart';
import 'package:aaab/app/models/PostStatus.dart';
import 'package:flutter/material.dart';

class CreatePostViewModel extends BaseViewModel {
  CreatePostViewModel(BuildContext context) : super(context);

  TextEditingController title = TextEditingController();
  TextEditingController petName = TextEditingController();
  TextEditingController contactNumber = TextEditingController();
  TextEditingController description = TextEditingController();
  String? _petType;
  String? get petType => _petType;
  String? _selectedStatus;
  String? get selectedStatus => _selectedStatus;

  List<String> petTypes = [PetType.CAT.name, PetType.DOG.name];
  List<String> status = [PostStatus.LOST.name, PostStatus.ABANDONED.name];

  bool get isValid => title.text != '' && petName.text != '' && contactNumber.text != '' && contactNumber.text != '' && description.text != '' && _petType != null && _selectedStatus != null;

  Future<void> init() async {}

  onPetTypeChange(String? change) {
    if (change != null) _petType = change;
    notifyListeners();
  }

  onStatusChange(String? change) {
    if (change != null) _selectedStatus = change;
    notifyListeners();
  }

  onPicClick() {
    print('pic clicked');
  }

  onSubmit() async {
    print('${title.text}, ${petName.text}, ${contactNumber.text}, ${description.text} ,$_petType ,$_selectedStatus ');
  }
}

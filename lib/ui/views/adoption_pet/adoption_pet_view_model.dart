import 'package:aaab/app/core/base_view_model.dart';
import 'package:aaab/app/models/PostActivity.dart';
import 'package:flutter/material.dart';

class AdoptionPetViewModel extends BaseViewModel {
  AdoptionPetViewModel(
    BuildContext context,
    PostActivity activity,
  ) : super(context) {
    _activity = activity;
  }
  Future<void> init() async {}

  late PostActivity _activity;
  PostActivity get activity => _activity;
}

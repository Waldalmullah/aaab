import 'package:aaab/app/core/base_view_model.dart';
import 'package:aaab/app/models/Shelter.dart';
import 'package:flutter/material.dart';
import 'package:open_mail_app/open_mail_app.dart';

class ShelterDetailsViewModel extends BaseViewModel {
  ShelterDetailsViewModel(context, shelter) : super(context) {
    _context = context;
    _shelter = shelter;
  }
  Future<void> init() async {}

  Future<void> sendEmail() async {
    OpenMailAppResult result = await OpenMailApp.openMailApp();
    if (!result.didOpen && result.canOpen) {
      showDialog(
        context: _context,
        builder: (_) {
          return MailAppPickerDialog(mailApps: result.options);
        },
      );
    }
  }

  late BuildContext _context;

  late Shelter _shelter;
   Shelter get shelter => _shelter;
}

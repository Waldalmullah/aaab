// ignore_for_file: file_names

import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/services/FireStoreService.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FireStoreService _fireStoreService = locator<FireStoreService>();

  User? _user;
  User? get user => _user;

  Future<bool> get hasUser async => _user != null;
  Future<String?> get userId async => _user?.uid;

  Future<void> passwordReset(String email) async =>
      await _auth.sendPasswordResetEmail(email: email);

  Future<bool> userExists() async {
    if (_user == null) return false;
    return await _fireStoreService.usersCollection
        .doc(_user!.uid)
        .get()
        .then((value) => value.exists);
  }
}

// ignore_for_file: file_names

import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/services/FireStoreService.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FireStoreService _fireStoreService = locator<FireStoreService>();

  User? _user;
  User? get user => _user;

  Future<bool> get hasUser async => _user != null;
  Future<String?> userId() async => _auth.currentUser?.uid;
  Future<String?> userDisplayName() async => _auth.currentUser?.displayName;
  Future<String?> userEmail() async => _auth.currentUser?.email;
  Future<String?> userPhotoURL() async => _auth.currentUser?.photoURL;
  Future<void> passwordReset(String email) async => await _auth.sendPasswordResetEmail(email: email);
  Future<UserCredential> signInAnonymously() async => await FirebaseAuth.instance.signInAnonymously();

  void sendEmailVerification() async {
    if (_user != null && !_user!.emailVerified) await _user?.sendEmailVerification();
  }

  Future<bool> userExists() async {
    if (_user == null) return false;
    return await _fireStoreService.usersCollection.doc(_user!.uid).get().then((value) => value.exists);
  }

  Future<String> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      if (kDebugMode) print(e);
    }

    return 'User has sign out successfully';
  }

  Future<String?> signInWithEmailAndPassword(String email, String password) async {
    String? _string;

    if (email.trim() == '') return 'Please input an email';
    if (password.trim() == '') return 'Please input a password';

    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      _string = 'User Has Logged In';
    } on FirebaseAuthException catch (exception) {
      _string = getErrorMessageFromFirebaseException(exception);
    }

    return _string;
  }


  Future<String?> createUserWithEmailAndPassword(String email, String password) async {
    String? _string;

    if (email.trim() == '') return 'Please input an email';
    if (password.trim() == '') return 'Please input a password';

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      _string = 'User has been created successfully';
    } on FirebaseAuthException catch (exception) {
      _string = getErrorMessageFromFirebaseException(exception);
    } catch (e) {
      if (kDebugMode) print(e);
    }

    return _string;
  }

  String getErrorMessageFromFirebaseException(FirebaseAuthException exception) {
    switch (exception.code.toLowerCase()) {
      case 'email-already-in-use':
        return 'An account already exists for the email you\'re trying to use. Login instead.';
      case 'invalid-email':
        return 'The email you\'re using is invalid. Please use a valid email.';
      case 'operation-not-allowed':
        return 'The authentication is not enabled on Firebase. Please enable the Authentication type on Firebase';
      case 'weak-password':
        return 'Your password is too weak. Please use a stronger password.';
      case 'wrong-password':
        return 'You seemed to have entered the wrong password. Double check it and try again.';
      case 'requires-recent-login':
        return 'The user must reauthenticate before this operation can be executed.';
      default:
        return exception.message ?? 'Something went wrong on our side. Please try again';
    }
  }
}

// ignore_for_file: file_names

import 'package:aaab/app/models/Post.dart';
import 'package:aaab/app/services/AuthService.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../locator/locator.dart';

@lazySingleton
class FireStoreService {
  final AuthService _authService = locator<AuthService>();

  CollectionReference<Map<String, dynamic>> usersCollection = FirebaseFirestore.instance.collection('users');
  CollectionReference<Map<String, dynamic>> postsCollection = FirebaseFirestore.instance.collection('posts');
  CollectionReference<Map<String, dynamic>> animalsSheltersCollection = FirebaseFirestore.instance.collection('animals_shelters');

  Future<DocumentSnapshot> getUserInformationDoc() async => FirebaseFirestore.instance.collection('users').doc(await _authService.userEmail()).get();

  Future<void> createPost(Post post) async {
    await postsCollection
        .add(post.toMap())
        .then((value) => print('A new post added !'))
        .catchError((e) {
      if (kDebugMode) print(e);
    });
  }
}

// ignore_for_file: file_names

import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

@lazySingleton
class FireStoreService {
  CollectionReference<Map<String, dynamic>> usersCollection = FirebaseFirestore.instance.collection('users');
  CollectionReference<Map<String, dynamic>> postsCollection = FirebaseFirestore.instance.collection('posts');
}

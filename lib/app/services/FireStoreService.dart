// ignore_for_file: file_names

import 'package:aaab/app/models/Post.dart';
import 'package:aaab/app/models/User.dart';
import 'package:aaab/app/services/AuthService.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../locator/locator.dart';

@lazySingleton
class FireStoreService {
  CollectionReference<Map<String, dynamic>> animalsSheltersCollection =
      FirebaseFirestore.instance.collection('animals_shelters');



}

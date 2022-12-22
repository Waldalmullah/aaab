import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../models/User.dart';

@lazySingleton
class UserService {
  final CollectionReference<Map<String, dynamic>> _collection =
      FirebaseFirestore.instance.collection('users');

  Future<User?> getUser(String id) async {
    User? _user;
    await _collection.doc(id).get().then((value) {
      _user = User.fromMap(value.data());
    });
    return _user;
  }

  Future<User> create(String id, User user) async {
    Map<String, dynamic> _data = user.toMap();
    try {
      await _collection.doc(id).set(_data);
    } catch (e) {
      print(e);
    }

    return User.fromMap(_data);
  }

}

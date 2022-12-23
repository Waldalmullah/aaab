import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/models/Post.dart';
import 'package:aaab/app/models/PostActivity.dart';
import 'package:aaab/app/services/AuthService.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../models/User.dart';

@lazySingleton
class PostActivityService {
  final AuthService _authService = locator<AuthService>();
  final CollectionReference<Map<String, dynamic>> _collection = FirebaseFirestore.instance.collection('posts_activities');

  Future<List<PostActivity>> getMyActivities() async {
    List<PostActivity> _activities = [];

    await _collection.get().then((QuerySnapshot<Map<String, dynamic>> values) async {
      for (QueryDocumentSnapshot<Map<String, dynamic>> doc in values.docs) {
        var data = doc.data();

        DocumentSnapshot _postDoc = await ((data['post']) as DocumentReference).get();
        DocumentSnapshot _userDoc = await ((data['user']) as DocumentReference).get();
        DocumentSnapshot _fromUserDoc = await ((data['from_user']) as DocumentReference).get();

        Post _post = Post.fromMap(_postDoc.data() as Map<String, dynamic>);
        User _user = User.fromMap(_userDoc.data() as Map<String, dynamic>);
        User _from_user = User.fromMap(_fromUserDoc.data() as Map<String, dynamic>);

        PostActivity postActivity = PostActivity(
          date: data['date'],
          post: _post,
          from_user: _from_user,
          user: _user,
          message: data['message'],
        );

        if ((_authService.user?.email ?? '') == _user.email) {
          _activities.add(postActivity);
        }
      }
    });

    return _activities;
  }

  Future<void> received() async {}
}

import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/models/User.dart';
import 'package:aaab/app/services/AuthService.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../models/Post.dart';

@lazySingleton
class PostService {
  final AuthService _authService = locator<AuthService>();
  final CollectionReference<Map<String, dynamic>> _collection =
      FirebaseFirestore.instance.collection('posts');

  Future<String> createPost(Post post) async => await _collection
      .add(post.toMap())
      .then((value){
        return 'A new post added !';
      })
      .catchError((e) {});

  Future<List<Post?>> getPosts() async {
    List<Post?> _posts = [];

    await _collection.get().then((QuerySnapshot<Map<String, dynamic>> values) {
      for (QueryDocumentSnapshot<Map<String, dynamic>> doc in values.docs) {
        _posts.add(Post.fromMap(doc.data()));
      }
    });

    return _posts;
  }

  Future<List<Post?>> getMyPosts() async {
    List<Post?> _posts = [];

    await _collection.get().then((QuerySnapshot<Map<String, dynamic>> values) async {
      for (QueryDocumentSnapshot<Map<String, dynamic>> doc in values.docs) {
        Post _post = Post.fromMap(doc.data());
        DocumentSnapshot _userDoc = await ((doc.data()['user']) as DocumentReference).get();
        User _user = User.fromMap(_userDoc.data() as Map<String, dynamic>);

        if ((_authService.user?.email ?? '') == _user.email) {
          _posts.add(_post);
        }
      }
    });

    return _posts;
  }
}

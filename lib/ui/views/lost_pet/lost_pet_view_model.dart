import 'package:aaab/app/core/base_view_model.dart';
import 'package:aaab/app/models/Post.dart';
import 'package:aaab/app/models/PostStatus.dart';
import 'package:aaab/app/router/router.dart';
import 'package:auto_route/auto_route.dart';

class LostPetViewModel extends BaseViewModel {
  LostPetViewModel(context, post) : super(context) {
    _post = post;
  }
  Future<void> init() async {}

  void toggleLike() {
    int likes = _post.likes ?? 0;
    // TODO
    // if (_hasliked) {
    //   _post = _post.copyWith(likes: likes++);
    // } else {
    //   _post = _post.copyWith(likes: likes--);
    // }
    _hasliked = !_hasliked;
    notifyListeners();
  }

  bool _hasliked = false;
  bool get hasliked => _hasliked;

  late Post _post;
  Post get post => _post;


  void pushFoundIt() => push(FoundItRoute(post: _post));
  void pushWantIt() => push(WantItRoute(post: _post));
}

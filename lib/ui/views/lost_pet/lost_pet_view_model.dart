import 'package:aaab/app/core/custom_base_view_model.dart';
import 'package:aaab/app/models/Post.dart';
import 'package:aaab/app/models/PostStatus.dart';

class LostPetViewModel extends BaseViewModel {
  LostPetViewModel(context) : super(context);
  Future<void> init() async {}

  void toggleLike() {
    if (_hasliked) {
      _numberOfLikes++;
    } else {
      _numberOfLikes--;
    }
    _hasliked = !_hasliked;
    notifyListeners();
  }

  final Post _post = Post(
      description:
          'A cat has been Missing recently in Janabiya, its brown, long tail, blue eyes, A cat has been Missing recently in Janabiya, its brown, long tail, blue eyes, A cat has been Missing recently in Janabiya, its brown, long tail, blue eyes....',
      title: "title",
      petName: "Sameer",
      photo:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg',
      status: PostStatus.ABANDONED);
  Post get post => _post;

  int _numberOfLikes = 5;
  int get numberOfLikes => 5;

  bool _hasliked = false;
  bool get hasliked => _hasliked;
}

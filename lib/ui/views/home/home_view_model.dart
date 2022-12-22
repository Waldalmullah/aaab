import 'package:aaab/app/core/base_view_model.dart';
import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/models/Post.dart';
import 'package:aaab/app/models/User.dart';
import 'package:aaab/app/router/router.gr.dart';
import 'package:aaab/app/services/AuthService.dart';
import 'package:aaab/app/services/PostService.dart';
import 'package:aaab/app/services/UserService.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel(context) : super(context);

  Future<void> init() async {
    String uuid = await _authService.userId() ?? '';
    _user = await _userService.getUser(uuid);
    _posts = await _postService.getPosts();
    _myPosts = await _postService.getMyPosts();
    toggleIsLoading();
  }

  Future<List<Post?>> getPosts() async {
    return await _postService.getPosts();
  }

  final AuthService _authService = locator<AuthService>();
  final UserService _userService = locator<UserService>();
  final PostService _postService = locator<PostService>();

  late User? _user;
  User? get user => _user;

  late List<Post?>? _posts = [];
  List<Post?>? get posts => _posts;

  late List<Post?>? _myPosts = [];
  List<Post?>? get myPosts => _myPosts;

  void toggleIsLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  void pushLostIt(Post post) => push(LostPetRoute(post: post));

  bool _isLoading = true;
  bool get isLoading => _isLoading;
}

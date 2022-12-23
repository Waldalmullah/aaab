import 'package:aaab/app/core/base_view_model.dart';
import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/models/PostActivity.dart';
import 'package:aaab/app/services/PostActivityService.dart';

class PostActivityViewModel extends BaseViewModel {
  PostActivityViewModel(context) : super(context);
  Future<void> init() async {
    _activities = await _activityService.getMyActivities();
    toggleIsLoading();
    notifyListeners();
  }

  final PostActivityService _activityService = locator<PostActivityService>();

  List<PostActivity> _activities = [];
  List<PostActivity> get activities => _activities;

  final int _currentIndex = 2;
  int get currentIndex => _currentIndex;

  void toggleIsLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  bool _isLoading = true;
  bool get isLoading => _isLoading;
}

import 'package:aaab/app/core/base_view_model.dart';

class PostActivityViewModel extends BaseViewModel {
  PostActivityViewModel(context) : super(context);
  Future<void> init() async {}

  final int _currentIndex = 2;
  int get currentIndex => _currentIndex;
}

import 'package:aaab/app/router/router.dart';
import 'package:aaab/app/core/custom_base_view_model.dart';

class LoginViewModel extends BaseViewModel {
  LoginViewModel(context) : super(context);

  Future<void> init() async {}

  void pushSignUpRoute() => pushNamed(const SignUpRoute().path);
}

import 'package:aaab/ui/views/login/login_view.dart';
import 'package:aaab/ui/views/lost_pet/lost_pet_view.dart';
import 'package:aaab/ui/views/sign_up/sign_up_view.dart';
import 'package:aaab/ui/views/splash/splash_view.dart';
import 'package:auto_route/auto_route.dart';

import 'package:aaab/ui/views/home/home_view.dart';

export './router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: "View,Route",
  routes: <AutoRoute>[
    AdaptiveRoute(page: SplashView),
    AdaptiveRoute(page: LoginView),
    AdaptiveRoute(page: HomeView),
    AdaptiveRoute(page: LostPetView, initial: true),
    AdaptiveRoute(page: SignUpView),
  ],
)
class $AppRouter {}

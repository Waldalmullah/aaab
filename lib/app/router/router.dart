import 'package:aaab/ui/views/about_us/about_us_view.dart';
import 'package:aaab/ui/views/found_it/found_it_view.dart';
import 'package:aaab/ui/views/login/login_view.dart';
import 'package:aaab/ui/views/lost_pet/lost_pet_view.dart';
import 'package:aaab/ui/views/sing_up/sing_up_view.dart';
import 'package:aaab/ui/views/splash/splash_view.dart';
import 'package:aaab/ui/views/want_it/want_it_view.dart';
import 'package:auto_route/auto_route.dart';

import 'package:aaab/ui/views/home/home_view.dart';

export './router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: "View,Route",
  routes: <AutoRoute>[
    AdaptiveRoute(page: SplashView),
    AdaptiveRoute(page: LoginView),
    AdaptiveRoute(page: HomeView),
    AdaptiveRoute(page: LostPetView),
    AdaptiveRoute(page: SingUpView),
    AdaptiveRoute(page: FoundItView),
    AdaptiveRoute(page: WantItView),
    AdaptiveRoute(page: AboutUsView, initial: true),
  ],
)
class $AppRouter {}

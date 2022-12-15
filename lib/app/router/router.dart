import 'package:auto_route/auto_route.dart';

import 'package:aaab/ui/views/home/home_view.dart';
import 'package:aaab/ui/views/startup/startup_view.dart';

export './router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: "View,Route",
  routes: <AutoRoute>[
    AdaptiveRoute(page: StartupView, initial: true),
    AdaptiveRoute(page: HomeView),
  ],
)
class $AaabRouter {}
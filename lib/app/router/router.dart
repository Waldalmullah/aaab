import 'package:aaab/ui/views/about_us/about_us_view.dart';
import 'package:aaab/ui/views/adoption_pet/adoption_pet_view.dart';
import 'package:aaab/ui/views/chat_bot/chat_bot_view.dart';
import 'package:aaab/ui/views/finding_pet/finding_pet_view.dart';
import 'package:aaab/ui/views/found_it/found_it_view.dart';
import 'package:aaab/ui/views/home/home_view.dart';
import 'package:aaab/ui/views/login/login_view.dart';
import 'package:aaab/ui/views/lost_pet/lost_pet_view.dart';
import 'package:aaab/ui/views/post_activity/post_activity_view.dart';
import 'package:aaab/ui/views/profile/profile_view.dart';
import 'package:aaab/ui/views/shelter/shelter_view.dart';
import 'package:aaab/ui/views/shelter_details/shelter_details_view.dart';
import 'package:aaab/ui/views/sing_up/sing_up_view.dart';
import 'package:aaab/ui/views/splash/splash_view.dart';
import 'package:aaab/ui/views/want_it/want_it_view.dart';
import 'package:auto_route/auto_route.dart';

import '../../ui/views/create_post/create_post_view.dart';

export './router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: "View,Route",
  routes: <AutoRoute>[
    AdaptiveRoute(page: SplashView),
    AdaptiveRoute(page: LoginView, initial: true),
    AdaptiveRoute(page: HomeView),
    AdaptiveRoute(page: LostPetView),
    AdaptiveRoute(page: SingUpView),
    AdaptiveRoute(page: FoundItView),
    AdaptiveRoute(page: WantItView),
    AdaptiveRoute(page: AboutUsView),
    AdaptiveRoute(page: CreatePostView),
    AdaptiveRoute(page: PostActivityView),
    AdaptiveRoute(page: ProfileView),
    AdaptiveRoute(page: AdoptionPetView),
    AdaptiveRoute(page: FindingPetView),
    AdaptiveRoute(page: ChatBotView),
    AdaptiveRoute(page: ShelterView),
    AdaptiveRoute(page: ShelterDetailsView),
  ],
)
class $AppRouter {}

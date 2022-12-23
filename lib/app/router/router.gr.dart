// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aaab/app/models/Post.dart' as _i20;
import 'package:aaab/app/models/PostActivity.dart' as _i22;
import 'package:aaab/app/models/Shelter.dart' as _i23;
import 'package:aaab/ui/views/about_us/about_us_view.dart' as _i8;
import 'package:aaab/ui/views/adoption_pet/adoption_pet_view.dart' as _i12;
import 'package:aaab/ui/views/chat_bot/chat_bot_view.dart' as _i14;
import 'package:aaab/ui/views/create_post/create_post_view.dart' as _i9;
import 'package:aaab/ui/views/finding_pet/finding_pet_view.dart' as _i13;
import 'package:aaab/ui/views/found_it/found_it_view.dart' as _i6;
import 'package:aaab/ui/views/home/home_view.dart' as _i3;
import 'package:aaab/ui/views/login/login_view.dart' as _i2;
import 'package:aaab/ui/views/lost_pet/lost_pet_view.dart' as _i4;
import 'package:aaab/ui/views/notification_activity/notification_activity_view.dart'
    as _i17;
import 'package:aaab/ui/views/post_activity/post_activity_view.dart' as _i10;
import 'package:aaab/ui/views/post_activity/post_activity_view_model.dart'
    as _i21;
import 'package:aaab/ui/views/profile/profile_view.dart' as _i11;
import 'package:aaab/ui/views/shelter/shelter_view.dart' as _i15;
import 'package:aaab/ui/views/shelter_details/shelter_details_view.dart'
    as _i16;
import 'package:aaab/ui/views/sing_up/sing_up_view.dart' as _i5;
import 'package:aaab/ui/views/splash/splash_view.dart' as _i1;
import 'package:aaab/ui/views/want_it/want_it_view.dart' as _i7;
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;

class AppRouter extends _i18.RootStackRouter {
  AppRouter([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashView(),
        opaque: true,
      );
    },
    LoginRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginView(),
        opaque: true,
      );
    },
    HomeRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeView(),
        opaque: true,
      );
    },
    LostPetRoute.name: (routeData) {
      final args = routeData.argsAs<LostPetRouteArgs>();
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.LostPetView(
          post: args.post,
          key: args.key,
        ),
        opaque: true,
      );
    },
    SingUpRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.SingUpView(),
        opaque: true,
      );
    },
    FoundItRoute.name: (routeData) {
      final args = routeData.argsAs<FoundItRouteArgs>();
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.FoundItView(
          post: args.post,
          key: args.key,
        ),
        opaque: true,
      );
    },
    WantItRoute.name: (routeData) {
      final args = routeData.argsAs<WantItRouteArgs>();
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i7.WantItView(
          post: args.post,
          key: args.key,
        ),
        opaque: true,
      );
    },
    AboutUsRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.AboutUsView(),
        opaque: true,
      );
    },
    CreatePostRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.CreatePostView(),
        opaque: true,
      );
    },
    PostActivityRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.PostActivityView(),
        opaque: true,
      );
    },
    ProfileRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.ProfileView(),
        opaque: true,
      );
    },
    AdoptionPetRoute.name: (routeData) {
      final args = routeData.argsAs<AdoptionPetRouteArgs>();
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i12.AdoptionPetView(
          key: args.key,
          model: args.model,
          activity: args.activity,
        ),
        opaque: true,
      );
    },
    FindingPetRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i13.FindingPetView(),
        opaque: true,
      );
    },
    ChatBotRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i14.ChatBotView(),
        opaque: true,
      );
    },
    ShelterRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i15.ShelterView(),
        opaque: true,
      );
    },
    ShelterDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ShelterDetailsRouteArgs>();
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i16.ShelterDetailsView(
          shelter: args.shelter,
          key: args.key,
        ),
        opaque: true,
      );
    },
    NotificationActivityRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i17.NotificationActivityView(),
        opaque: true,
      );
    },
  };

  @override
  List<_i18.RouteConfig> get routes => [
        _i18.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i18.RouteConfig(
          LoginRoute.name,
          path: '/login-view',
        ),
        _i18.RouteConfig(
          HomeRoute.name,
          path: '/home-view',
        ),
        _i18.RouteConfig(
          LostPetRoute.name,
          path: '/lost-pet-view',
        ),
        _i18.RouteConfig(
          SingUpRoute.name,
          path: '/sing-up-view',
        ),
        _i18.RouteConfig(
          FoundItRoute.name,
          path: '/found-it-view',
        ),
        _i18.RouteConfig(
          WantItRoute.name,
          path: '/want-it-view',
        ),
        _i18.RouteConfig(
          AboutUsRoute.name,
          path: '/about-us-view',
        ),
        _i18.RouteConfig(
          CreatePostRoute.name,
          path: '/create-post-view',
        ),
        _i18.RouteConfig(
          PostActivityRoute.name,
          path: '/post-activity-view',
        ),
        _i18.RouteConfig(
          ProfileRoute.name,
          path: '/profile-view',
        ),
        _i18.RouteConfig(
          AdoptionPetRoute.name,
          path: '/adoption-pet-view',
        ),
        _i18.RouteConfig(
          FindingPetRoute.name,
          path: '/finding-pet-view',
        ),
        _i18.RouteConfig(
          ChatBotRoute.name,
          path: '/chat-bot-view',
        ),
        _i18.RouteConfig(
          ShelterRoute.name,
          path: '/shelter-view',
        ),
        _i18.RouteConfig(
          ShelterDetailsRoute.name,
          path: '/shelter-details-view',
        ),
        _i18.RouteConfig(
          NotificationActivityRoute.name,
          path: '/notification-activity-view',
        ),
        _i18.RouteConfig(
          LostPetRoute.name,
          path: '/lost-pet-view',
        ),
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashRoute extends _i18.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginView]
class LoginRoute extends _i18.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-view',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.HomeView]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-view',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.LostPetView]
class LostPetRoute extends _i18.PageRouteInfo<LostPetRouteArgs> {
  LostPetRoute({
    required _i20.Post post,
    _i19.Key? key,
  }) : super(
          LostPetRoute.name,
          path: '/lost-pet-view',
          args: LostPetRouteArgs(
            post: post,
            key: key,
          ),
        );

  static const String name = 'LostPetRoute';
}

class LostPetRouteArgs {
  const LostPetRouteArgs({
    required this.post,
    this.key,
  });

  final _i20.Post post;

  final _i19.Key? key;

  @override
  String toString() {
    return 'LostPetRouteArgs{post: $post, key: $key}';
  }
}

/// generated route for
/// [_i5.SingUpView]
class SingUpRoute extends _i18.PageRouteInfo<void> {
  const SingUpRoute()
      : super(
          SingUpRoute.name,
          path: '/sing-up-view',
        );

  static const String name = 'SingUpRoute';
}

/// generated route for
/// [_i6.FoundItView]
class FoundItRoute extends _i18.PageRouteInfo<FoundItRouteArgs> {
  FoundItRoute({
    required _i20.Post post,
    _i19.Key? key,
  }) : super(
          FoundItRoute.name,
          path: '/found-it-view',
          args: FoundItRouteArgs(
            post: post,
            key: key,
          ),
        );

  static const String name = 'FoundItRoute';
}

class FoundItRouteArgs {
  const FoundItRouteArgs({
    required this.post,
    this.key,
  });

  final _i20.Post post;

  final _i19.Key? key;

  @override
  String toString() {
    return 'FoundItRouteArgs{post: $post, key: $key}';
  }
}

/// generated route for
/// [_i7.WantItView]
class WantItRoute extends _i18.PageRouteInfo<WantItRouteArgs> {
  WantItRoute({
    required _i20.Post post,
    _i19.Key? key,
  }) : super(
          WantItRoute.name,
          path: '/want-it-view',
          args: WantItRouteArgs(
            post: post,
            key: key,
          ),
        );

  static const String name = 'WantItRoute';
}

class WantItRouteArgs {
  const WantItRouteArgs({
    required this.post,
    this.key,
  });

  final _i20.Post post;

  final _i19.Key? key;

  @override
  String toString() {
    return 'WantItRouteArgs{post: $post, key: $key}';
  }
}

/// generated route for
/// [_i8.AboutUsView]
class AboutUsRoute extends _i18.PageRouteInfo<void> {
  const AboutUsRoute()
      : super(
          AboutUsRoute.name,
          path: '/about-us-view',
        );

  static const String name = 'AboutUsRoute';
}

/// generated route for
/// [_i9.CreatePostView]
class CreatePostRoute extends _i18.PageRouteInfo<void> {
  const CreatePostRoute()
      : super(
          CreatePostRoute.name,
          path: '/create-post-view',
        );

  static const String name = 'CreatePostRoute';
}

/// generated route for
/// [_i10.PostActivityView]
class PostActivityRoute extends _i18.PageRouteInfo<void> {
  const PostActivityRoute()
      : super(
          PostActivityRoute.name,
          path: '/post-activity-view',
        );

  static const String name = 'PostActivityRoute';
}

/// generated route for
/// [_i11.ProfileView]
class ProfileRoute extends _i18.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/profile-view',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i12.AdoptionPetView]
class AdoptionPetRoute extends _i18.PageRouteInfo<AdoptionPetRouteArgs> {
  AdoptionPetRoute({
    _i19.Key? key,
    required _i21.PostActivityViewModel model,
    required _i22.PostActivity activity,
  }) : super(
          AdoptionPetRoute.name,
          path: '/adoption-pet-view',
          args: AdoptionPetRouteArgs(
            key: key,
            model: model,
            activity: activity,
          ),
        );

  static const String name = 'AdoptionPetRoute';
}

class AdoptionPetRouteArgs {
  const AdoptionPetRouteArgs({
    this.key,
    required this.model,
    required this.activity,
  });

  final _i19.Key? key;

  final _i21.PostActivityViewModel model;

  final _i22.PostActivity activity;

  @override
  String toString() {
    return 'AdoptionPetRouteArgs{key: $key, model: $model, activity: $activity}';
  }
}

/// generated route for
/// [_i13.FindingPetView]
class FindingPetRoute extends _i18.PageRouteInfo<void> {
  const FindingPetRoute()
      : super(
          FindingPetRoute.name,
          path: '/finding-pet-view',
        );

  static const String name = 'FindingPetRoute';
}

/// generated route for
/// [_i14.ChatBotView]
class ChatBotRoute extends _i18.PageRouteInfo<void> {
  const ChatBotRoute()
      : super(
          ChatBotRoute.name,
          path: '/chat-bot-view',
        );

  static const String name = 'ChatBotRoute';
}

/// generated route for
/// [_i15.ShelterView]
class ShelterRoute extends _i18.PageRouteInfo<void> {
  const ShelterRoute()
      : super(
          ShelterRoute.name,
          path: '/shelter-view',
        );

  static const String name = 'ShelterRoute';
}

/// generated route for
/// [_i16.ShelterDetailsView]
class ShelterDetailsRoute extends _i18.PageRouteInfo<ShelterDetailsRouteArgs> {
  ShelterDetailsRoute({
    required _i23.Shelter shelter,
    _i19.Key? key,
  }) : super(
          ShelterDetailsRoute.name,
          path: '/shelter-details-view',
          args: ShelterDetailsRouteArgs(
            shelter: shelter,
            key: key,
          ),
        );

  static const String name = 'ShelterDetailsRoute';
}

class ShelterDetailsRouteArgs {
  const ShelterDetailsRouteArgs({
    required this.shelter,
    this.key,
  });

  final _i23.Shelter shelter;

  final _i19.Key? key;

  @override
  String toString() {
    return 'ShelterDetailsRouteArgs{shelter: $shelter, key: $key}';
  }
}

/// generated route for
/// [_i17.NotificationActivityView]
class NotificationActivityRoute extends _i18.PageRouteInfo<void> {
  const NotificationActivityRoute()
      : super(
          NotificationActivityRoute.name,
          path: '/notification-activity-view',
        );

  static const String name = 'NotificationActivityRoute';
}

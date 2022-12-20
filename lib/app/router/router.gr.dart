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
import 'package:aaab/ui/views/about_us/about_us_view.dart' as _i8;
import 'package:aaab/ui/views/create_post/create_post_view.dart' as _i9;
import 'package:aaab/ui/views/found_it/found_it_view.dart' as _i6;
import 'package:aaab/ui/views/home/home_view.dart' as _i3;
import 'package:aaab/ui/views/login/login_view.dart' as _i2;
import 'package:aaab/ui/views/lost_pet/lost_pet_view.dart' as _i4;
import 'package:aaab/ui/views/sing_up/sing_up_view.dart' as _i5;
import 'package:aaab/ui/views/splash/splash_view.dart' as _i1;
import 'package:aaab/ui/views/want_it/want_it_view.dart' as _i7;
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashView(),
        opaque: true,
      );
    },
    LoginRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginView(),
        opaque: true,
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeView(),
        opaque: true,
      );
    },
    LostPetRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.LostPetView(),
        opaque: true,
      );
    },
    SingUpRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.SingUpView(),
        opaque: true,
      );
    },
    FoundItRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.FoundItView(),
        opaque: true,
      );
    },
    WantItRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.WantItView(),
        opaque: true,
      );
    },
    AboutUsRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.AboutUsView(),
        opaque: true,
      );
    },
    CreatePostRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.CreatePostView(),
        opaque: true,
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          SplashRoute.name,
          path: '/splash-view',
        ),
        _i10.RouteConfig(
          LoginRoute.name,
          path: '/',
        ),
        _i10.RouteConfig(
          HomeRoute.name,
          path: '/home-view',
        ),
        _i10.RouteConfig(
          LostPetRoute.name,
          path: '/lost-pet-view',
        ),
        _i10.RouteConfig(
          SingUpRoute.name,
          path: '/sing-up-view',
        ),
        _i10.RouteConfig(
          FoundItRoute.name,
          path: '/found-it-view',
        ),
        _i10.RouteConfig(
          WantItRoute.name,
          path: '/want-it-view',
        ),
        _i10.RouteConfig(
          AboutUsRoute.name,
          path: '/about-us-view',
        ),
        _i10.RouteConfig(
          CreatePostRoute.name,
          path: '/create-post-view',
        ),
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-view',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginView]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.HomeView]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-view',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.LostPetView]
class LostPetRoute extends _i10.PageRouteInfo<void> {
  const LostPetRoute()
      : super(
          LostPetRoute.name,
          path: '/lost-pet-view',
        );

  static const String name = 'LostPetRoute';
}

/// generated route for
/// [_i5.SingUpView]
class SingUpRoute extends _i10.PageRouteInfo<void> {
  const SingUpRoute()
      : super(
          SingUpRoute.name,
          path: '/sing-up-view',
        );

  static const String name = 'SingUpRoute';
}

/// generated route for
/// [_i6.FoundItView]
class FoundItRoute extends _i10.PageRouteInfo<void> {
  const FoundItRoute()
      : super(
          FoundItRoute.name,
          path: '/found-it-view',
        );

  static const String name = 'FoundItRoute';
}

/// generated route for
/// [_i7.WantItView]
class WantItRoute extends _i10.PageRouteInfo<void> {
  const WantItRoute()
      : super(
          WantItRoute.name,
          path: '/want-it-view',
        );

  static const String name = 'WantItRoute';
}

/// generated route for
/// [_i8.AboutUsView]
class AboutUsRoute extends _i10.PageRouteInfo<void> {
  const AboutUsRoute()
      : super(
          AboutUsRoute.name,
          path: '/about-us-view',
        );

  static const String name = 'AboutUsRoute';
}

/// generated route for
/// [_i9.CreatePostView]
class CreatePostRoute extends _i10.PageRouteInfo<void> {
  const CreatePostRoute()
      : super(
          CreatePostRoute.name,
          path: '/create-post-view',
        );

  static const String name = 'CreatePostRoute';
}

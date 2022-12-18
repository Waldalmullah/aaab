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
import 'package:aaab/ui/views/home/home_view.dart' as _i3;
import 'package:aaab/ui/views/login/login_view.dart' as _i2;
import 'package:aaab/ui/views/lost_pet/lost_pet_view.dart' as _i4;
import 'package:aaab/ui/views/sign_up/sign_up_view.dart' as _i5;
import 'package:aaab/ui/views/splash/splash_view.dart' as _i1;
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashView(),
        opaque: true,
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginView(),
        opaque: true,
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeView(),
        opaque: true,
      );
    },
    LostPetRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child:  _i4.LostPetView(),
        opaque: true,
      );
    },
    SignUpRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.SignUpView(),
        opaque: true,
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          SplashRoute.name,
          path: '/splash-view',
        ),
        _i6.RouteConfig(
          LoginRoute.name,
          path: '/login-view',
        ),
        _i6.RouteConfig(
          HomeRoute.name,
          path: '/home-view',
        ),
        _i6.RouteConfig(
          LostPetRoute.name,
          path: '/',
        ),
        _i6.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-view',
        ),
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-view',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginView]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-view',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.HomeView]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-view',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.LostPetView]
class LostPetRoute extends _i6.PageRouteInfo<void> {
  const LostPetRoute()
      : super(
          LostPetRoute.name,
          path: '/',
        );

  static const String name = 'LostPetRoute';
}

/// generated route for
/// [_i5.SignUpView]
class SignUpRoute extends _i6.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-view',
        );

  static const String name = 'SignUpRoute';
}

import 'package:flutter/material.dart';
import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/services/router_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RouterService _routerService = locator<RouterService>();

    return MaterialApp.router(
      title: "Aaab",
      routeInformationParser: _routerService.router.defaultRouteParser(),
      routerDelegate: _routerService.router.delegate(),
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}

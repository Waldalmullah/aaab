import 'package:logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/services/router_service.dart';

main() {
  //TODO set up firebase
  WidgetsFlutterBinding.ensureInitialized();
  Logger.level = Level.debug;
  setupLocator();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RouterService routerService = locator<RouterService>();

    return MaterialApp.router(
      title: 'Aaab',
      theme: AppThemes().lightTheme,
      darkTheme: AppThemes().darkTheme,
      routerDelegate: routerService.router.delegate(),
      routeInformationParser: routerService.router.defaultRouteParser(),
    );
  }
}

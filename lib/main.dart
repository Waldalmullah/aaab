import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:aaab/app/app.dart';
import 'package:aaab/app/locator/locator.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();

  Logger.level = Level.debug;

  setupLocator();

  runApp(const MyApp());
}
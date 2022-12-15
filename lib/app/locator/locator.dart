import 'package:aaab/app/utils/logger.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'locator.config.dart';

final GetIt locator = GetIt.instance;

@InjectableInit()
void setupLocator() => locator.init();
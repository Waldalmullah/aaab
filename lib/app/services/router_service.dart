import "package:injectable/injectable.dart";
import "package:aaab/app/router/router.dart";

@lazySingleton
class RouterService {
  final AppRouter router = AppRouter();
}

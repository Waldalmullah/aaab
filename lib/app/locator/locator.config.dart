// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aaab/app/services/AuthService.dart' as _i3;
import 'package:aaab/app/services/CloudStorageService.dart' as _i4;
import 'package:aaab/app/services/FireStoreService.dart' as _i5;
import 'package:aaab/app/services/router_service.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AuthService>(() => _i3.AuthService());
    gh.lazySingleton<_i4.CloudStorageService>(() => _i4.CloudStorageService());
    gh.lazySingleton<_i5.FireStoreService>(() => _i5.FireStoreService());
    gh.lazySingleton<_i6.RouterService>(() => _i6.RouterService());
    return this;
  }
}

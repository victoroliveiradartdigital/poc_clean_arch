// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/login/data/repositories/authentication_repository_imp.dart'
    as _i10;
import '../features/login/data/sources/authentication_client.dart' as _i4;
import '../features/login/data/sources/authentication_client_imp.dart' as _i8;
import '../features/login/data/sources/remote/authentication_datasource.dart'
    as _i6;
import '../features/login/data/sources/remote/authentication_remote_datasource_imp.dart'
    as _i7;
import '../features/login/domain/repositories/authentication_repository.dart'
    as _i9;
import '../features/login/domain/usecases/authentication_usecase.dart' as _i11;
import '../features/login/domain/usecases/authentication_usecase_imp.dart'
    as _i12;
import '../features/login/login.module.dart' as _i14;
import '../features/login/presentation/controllers/login_controller.dart'
    as _i13;
import 'app_config.dart' as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.AppConfig>(_i3.AppConfig());
  gh.factory<_i4.AuthenticationClient>(
      () => registerModule.remoteLoginDataSource(get<_i5.Dio>()));
  gh.lazySingleton<_i6.AuthenticationDataSource>(() =>
      _i7.AuthenticationRemoteDatasourceImp(
          get<_i8.AuthenticationClientImp>()));
  gh.singleton<_i9.AuthenticationRepository>(
      _i10.AuthenticationRepositoryImp(get<_i6.AuthenticationDataSource>()));
  gh.factory<_i11.AuthenticationUseCase>(
      () => _i12.AuthenticationUseCaseImp(get<_i9.AuthenticationRepository>()));
  gh.factory<_i13.LoginController>(() => _i13.LoginController(
      authenticationUseCase: get<_i12.AuthenticationUseCaseImp>()));
  return get;
}

class _$RegisterModule extends _i14.RegisterModule {}

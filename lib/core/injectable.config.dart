// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/login/data/repositories/authentication_repository_imp.dart'
    as _i3;
import '../features/login/data/sources/authentication_datasource.dart' as _i4;
import '../features/login/domain/repositories/authentication_repository.dart'
    as _i6;
import '../features/login/domain/usecases/authentication_usecase_imp.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthenticationRepositoryImp>(() =>
      _i3.AuthenticationRepositoryImp(get<_i4.AuthenticationDataSource>()));
  gh.factory<_i5.AuthenticationUseCaseImp>(
      () => _i5.AuthenticationUseCaseImp(get<_i6.AuthenticationRepository>()));
  return get;
}

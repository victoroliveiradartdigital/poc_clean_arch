import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:poc_clean_arch/core/server_failure.dart';
import 'package:poc_clean_arch/features/login/data/sources/authentication_client_imp.dart';
import 'package:poc_clean_arch/features/login/data/sources/remote/authentication_datasource.dart';
import 'package:poc_clean_arch/features/login/domain/entities/authentication_entity.dart';
import 'package:poc_clean_arch/features/login/domain/entities/login_param.dart';

@LazySingleton(as: AuthenticationDataSource)
class AuthenticationRemoteDatasourceImp implements AuthenticationDataSource {
  AuthenticationRemoteDatasourceImp(this._authenticationClient);

  final AuthenticationClientImp _authenticationClient;

  @override
  Future<AuthenticationEntity> authentication(LoginParam param) async {
    try {
      var result = await _authenticationClient.authentication(param);

      return result;
    } on DioError {
      throw ServerFailure();
    }
  }
}

import 'package:dio/dio.dart';
import 'package:poc_clean_arch/core/server_failure.dart';
import 'package:poc_clean_arch/features/user/data/sources/authentication_client.dart';
import 'package:poc_clean_arch/features/user/data/sources/authentication_datasource.dart';
import 'package:poc_clean_arch/features/user/domain/entities/authentication_entity.dart';
import 'package:poc_clean_arch/features/user/domain/entities/login_param.dart';

class AuthenticationRemoteDatasourceImp implements AuthenticationDataSource {
  AuthenticationRemoteDatasourceImp(this._authenticationClient);

  final AuthenticationClient _authenticationClient;

  @override
  Future<AuthenticationEntity> authentication(LoginParam param) async {
    try {
      var result = await _authenticationClient.authentication(param);

      return result;
    } on DioError catch (e) {
      throw ServerFailure();
    }
  }
}

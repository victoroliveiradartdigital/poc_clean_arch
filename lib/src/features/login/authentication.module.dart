import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:poc_clean_arch/src/features/login/data/source/authentication.dart';
import 'package:poc_clean_arch/src/features/login/data/source/remote/authentication.dart';

@module
abstract class RegisterModule {
  AuthenticationDataSource remoteAuthenticationDataSource(Dio dio) =>
      AuthenticationRemoteDataSource(dio);
}

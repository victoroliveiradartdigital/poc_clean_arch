import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:poc_clean_arch/core/app_config.dart';
import 'package:poc_clean_arch/features/login/data/sources/authentication_client.dart';
import 'package:poc_clean_arch/features/login/data/sources/authentication_client_imp.dart';

@module
abstract class RegisterModule {
  AuthenticationClient remoteLoginDataSource(Dio dio) =>
      AuthenticationClientImp(dio, AppConfig());
}

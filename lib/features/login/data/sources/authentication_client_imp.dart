import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:poc_clean_arch/core/app_config.dart';
import 'package:poc_clean_arch/features/login/data/sources/authentication_client.dart';
import 'package:poc_clean_arch/features/login/domain/entities/authentication_entity.dart';
import 'package:poc_clean_arch/features/login/domain/entities/login_param.dart';
import 'package:retrofit/retrofit.dart';

part 'authentication_client_imp.g.dart';

@RestApi()
abstract class AuthenticationClientImp implements AuthenticationClient {
  @factoryMethod
  factory AuthenticationClientImp(Dio dio, AppConfig appConfig) =>
      _AuthenticationClientImp(dio, baseUrl: appConfig.apiUrl);

  @override
  @POST('/auth/token')
  Future<AuthenticationEntity> authentication(@Body() LoginParam loginParam);
}

import 'package:dio/dio.dart';
import 'package:poc_clean_arch/core/constants.dart';
import 'package:poc_clean_arch/features/login/domain/entities/authentication_entity.dart';
import 'package:poc_clean_arch/features/login/domain/entities/login_param.dart';
import 'package:retrofit/retrofit.dart';

part 'authentication_client.g.dart';

@RestApi(baseUrl: baseURL)
abstract class AuthenticationClient {
  factory AuthenticationClient(Dio dio, {String baseUrl}) =
      _AuthenticationClient;

  @POST('/auth/token')
  Future<AuthenticationEntity> authentication(@Body() LoginParam loginParam);
}

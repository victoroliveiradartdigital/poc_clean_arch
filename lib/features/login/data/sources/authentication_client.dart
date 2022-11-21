import 'package:poc_clean_arch/features/login/domain/entities/authentication_entity.dart';
import 'package:poc_clean_arch/features/login/domain/entities/login_param.dart';

abstract class AuthenticationClient {
  Future<AuthenticationEntity> authentication(LoginParam loginParam);
}

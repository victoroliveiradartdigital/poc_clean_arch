import 'package:poc_clean_arch/features/user/domain/entities/authentication_entity.dart';
import 'package:poc_clean_arch/features/user/domain/entities/login_param.dart';

abstract class AuthenticationDataSource {
  Future<AuthenticationEntity> authentication(LoginParam param);
}

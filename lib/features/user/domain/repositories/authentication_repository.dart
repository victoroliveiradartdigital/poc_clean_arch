import 'package:poc_clean_arch/core/server_failure.dart';
import 'package:poc_clean_arch/features/user/domain/entities/authentication_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:poc_clean_arch/features/user/domain/entities/login_param.dart';

abstract class AuthenticationRepository {
  Future<Either<ServerFailure, AuthenticationEntity>> authentication(
      LoginParam loginParam);
}

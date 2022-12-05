import 'package:dartz/dartz.dart';
import 'package:poc_clean_arch/src/features/login/domain/entity/authentication.dart';

import '../../../../core/default_error.dart';

abstract class AuthenticationRepository {
  Future<Either<DefaultError, AuthenticationEntity>> authentication(
      {required String username, required String secret});
}

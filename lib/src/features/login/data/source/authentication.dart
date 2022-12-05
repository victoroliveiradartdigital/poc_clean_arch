import 'package:poc_clean_arch/src/features/login/data/model/authentication.dart';

import '../../../../core/default_error.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationDataSource {
  Future<Either<DefaultError, AuthenticationModel>> authentication(
      {required String username, required String secret});
}

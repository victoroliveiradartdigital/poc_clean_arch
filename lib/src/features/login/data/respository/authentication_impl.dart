import 'package:injectable/injectable.dart';
import 'package:poc_clean_arch/src/core/default_error.dart';
import 'package:poc_clean_arch/src/core/di.dart';
import 'package:poc_clean_arch/src/features/login/data/mapper/authentication_mapper.dart';
import 'package:poc_clean_arch/src/features/login/data/source/authentication.dart';
import 'package:poc_clean_arch/src/features/login/domain/entity/authentication.dart';
import 'package:dartz/dartz.dart';

import '../../domain/respository/authentication.dart';

@Injectable(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  const AuthenticationRepositoryImpl(
      @remoteDataSource this.remote, this.mapper);

  final AuthenticationDataSource remote;
  final AuthenticationMapper mapper;

  @override
  Future<Either<DefaultError, AuthenticationEntity>> authentication({
    required String username,
    required String secret,
  }) async {
    final result =
        await remote.authentication(username: username, secret: secret);

    return result.fold(
        (error) => Left(error), (model) => Right(mapper.toEntity(model)));
  }
}

import 'package:injectable/injectable.dart';
import 'package:poc_clean_arch/core/server_failure.dart';
import 'package:poc_clean_arch/features/login/data/sources/remote/authentication_datasource.dart';
import 'package:poc_clean_arch/features/login/domain/entities/authentication_entity.dart';
import 'package:poc_clean_arch/features/login/domain/entities/login_param.dart';
import 'package:poc_clean_arch/features/login/domain/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';

@Singleton(as: AuthenticationRepository)
class AuthenticationRepositoryImp implements AuthenticationRepository {
  final AuthenticationDataSource _authenticationDataSource;
  AuthenticationRepositoryImp(this._authenticationDataSource);

  @override
  Future<Either<ServerFailure, AuthenticationEntity>> authentication(
      LoginParam param) async {
    try {
      final response = await _authenticationDataSource.authentication(param);

      return Right(response);
    } catch (e) {
      return left(ServerFailure());
    }
  }
}

import 'package:poc_clean_arch/features/user/data/sources/authentication_datasource.dart';
import 'package:poc_clean_arch/features/user/domain/entities/authentication_entity.dart';
import 'package:poc_clean_arch/features/user/domain/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';

class AuthenticationRepositoryImp implements AuthenticationRepository {
  final AuthenticationDataSource _authenticationDataSource;
  AuthenticationRepositoryImp(this._authenticationDataSource);

  @override
  Future<Either<Exception, AuthenticationEntity>> authentication() async {
    return await _authenticationDataSource();
    //TODO RESPONSABILIDADE FAZ A COMUNICACAO DA DATASOURCE COM CASOS DE USO
  }

  @override
  Future<Either<Exception, AuthenticationEntity>> recoveryPassword() async {
    return await _authenticationDataSource();
    //TODO RESPONSABILIDADE FAZ A COMUNICACAO DA DATASOURCE COM CASOS DE USO
  }
}

import 'package:poc_clean_arch/features/user/domain/entities/authentication_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {
  Future<Either<Exception, AuthenticationEntity>> authentication();
  Future<Either<Exception, AuthenticationEntity>> recoveryPassword();

  //TODO INTERFACE FAZ A COMUNICACAO DA DATASOURCE COM CASOS DE USO
  //REPOSITORIO UNICO **
}

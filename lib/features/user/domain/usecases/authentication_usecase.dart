import 'package:poc_clean_arch/features/user/domain/entities/authentication_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationUseCase {
  Future<Either<Exception, AuthenticationEntity>> call();

  //TODO RESPONSABILIDADE CASOS DE USO QUE O USUARIO PODE TOMAR NA APLICACAO
}

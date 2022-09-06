import 'package:poc_clean_arch/features/user/domain/entities/authentication_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationDataSource {
  Future<Either<Exception, AuthenticationEntity>> call();
  //TODO INTERFACE FAZ A COMUNICACAO COM FONTE DE DADOS EXTERNAS
}

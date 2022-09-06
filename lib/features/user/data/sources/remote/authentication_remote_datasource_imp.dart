import 'package:poc_clean_arch/features/user/data/sources/authentication_datasource.dart';
import 'package:poc_clean_arch/features/user/data/sources/model/authentication_mapper.dart';
import 'package:poc_clean_arch/features/user/domain/entities/authentication_entity.dart';
import 'package:dartz/dartz.dart';

class AuthenticationRemoteDatasourceImp implements AuthenticationDataSource {
  AuthenticationRemoteDatasourceImp();

  @override
  Future<Either<Exception, AuthenticationEntity>> call() async {
    return Right(AuthenticationMapper());
    //TODO RESPONSABILIDADE FAZ A COMUNICACAO COM FONTE DE DADOS EXTERNAS
  }
}

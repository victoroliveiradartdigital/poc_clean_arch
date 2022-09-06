import 'package:poc_clean_arch/features/user/domain/entities/authentication_entity.dart';
import 'package:poc_clean_arch/features/user/domain/repositories/authentication_repository.dart';
import 'package:poc_clean_arch/features/user/domain/usecases/authentication_usecase.dart';
import 'package:dartz/dartz.dart';

class AuthenticationUseCaseImp implements AuthenticationUseCase {
  final AuthenticationRepository _authenticationRepository;
  AuthenticationUseCaseImp(this._authenticationRepository);

  @override
  Future<Either<Exception, AuthenticationEntity>> call() async {
    return await _authenticationRepository.authentication();
    //TODO INTERFACE CASOS DE USO QUE O USUARIO PODE TOMAR NA APLICACAO
  }
}

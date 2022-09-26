import 'package:injectable/injectable.dart';
import 'package:poc_clean_arch/core/server_failure.dart';
import 'package:poc_clean_arch/features/login/domain/entities/authentication_entity.dart';
import 'package:poc_clean_arch/features/login/domain/entities/login_param.dart';
import 'package:poc_clean_arch/features/login/domain/repositories/authentication_repository.dart';
import 'package:poc_clean_arch/features/login/domain/usecases/authentication_usecase.dart';
import 'package:dartz/dartz.dart';

@Injectable()
class AuthenticationUseCaseImp implements AuthenticationUseCase {
  final AuthenticationRepository _authenticationRepository;
  AuthenticationUseCaseImp(this._authenticationRepository);

  @override
  Future<Either<ServerFailure, AuthenticationEntity>> call(
      LoginParam loginParam) async {
    return await _authenticationRepository.authentication(loginParam);
  }
}

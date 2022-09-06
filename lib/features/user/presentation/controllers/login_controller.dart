import 'package:poc_clean_arch/features/user/domain/usecases/authentication_usecase.dart';

class LoginController {
  final AuthenticationUseCase _authenticationUseCase;
  LoginController(this._authenticationUseCase) {
    //TODO RESPONSAVEL PELA COMUNICACAO DA UI COM USECASE
  }
}

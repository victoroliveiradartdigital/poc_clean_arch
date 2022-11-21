import 'package:injectable/injectable.dart';
import 'package:poc_clean_arch/features/login/domain/entities/login_param.dart';
import 'package:poc_clean_arch/features/login/domain/usecases/authentication_usecase_imp.dart';

@Injectable()
class LoginController {
  final AuthenticationUseCaseImp authenticationUseCase;

  LoginController({
    required this.authenticationUseCase,
  });

  Future<void> login(LoginParam loginParam) async {
    final result = await authenticationUseCase(loginParam);
    result.fold((l) {
      print(l.toString());
    }, (r) async {
      print(r.access);
    });
  }
}

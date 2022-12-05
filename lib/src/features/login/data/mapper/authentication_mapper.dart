import 'package:injectable/injectable.dart';
import 'package:poc_clean_arch/src/core/mapper.dart';

import '../../domain/entity/authentication.dart';
import '../model/authentication.dart';

abstract class AuthenticationMapper
    with
        MapperEntity<AuthenticationEntity, AuthenticationModel>,
        MapperModel<AuthenticationModel, AuthenticationEntity> {}

@Injectable()
@Singleton(as: AuthenticationMapper)
class AuthMapperImpl extends AuthenticationMapper {
  @override
  AuthenticationEntity toEntity(AuthenticationModel model) =>
      AuthenticationEntity(
        accessToken: model.accessToken,
        refreshToken: model.refreshToken,
        expiresIn: model.expiresIn,
      );

  @override
  AuthenticationModel toModel(AuthenticationEntity entity) =>
      AuthenticationModel(
        accessToken: entity.accessToken,
        refreshToken: entity.refreshToken,
        expiresIn: entity.expiresIn,
      );
}

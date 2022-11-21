import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poc_clean_arch/features/login/domain/entities/authentication_entity.dart';
import 'package:poc_clean_arch/features/login/domain/entities/user_entity.dart';

part 'authentication.freezed.dart';
part 'authentication.g.dart';

@Freezed()
class Authentication extends AuthenticationEntity with _$Authentication {
  const factory Authentication({
    required String access,
    required String refresh,
    required String expireIn,
    required UserEntity user,
  }) = _Authentication;

  factory Authentication.fromJson(Map<String, Object?> json) =>
      _$AuthenticationFromJson(json);
}

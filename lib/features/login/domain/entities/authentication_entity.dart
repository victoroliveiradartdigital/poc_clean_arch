import 'package:json_annotation/json_annotation.dart';
import 'package:poc_clean_arch/features/login/domain/entities/user_entity.dart';

part 'authentication_entity.g.dart';

@JsonSerializable()
class AuthenticationEntity {
  final String access;
  final String refresh;
  final String expireIn;
  final UserEntity user;

  const AuthenticationEntity({
    required this.access,
    required this.refresh,
    required this.expireIn,
    required this.user,
  });

  factory AuthenticationEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationEntityFromJson(json);
  Map<String, dynamic> toJson() => _$AuthenticationEntityToJson(this);
}

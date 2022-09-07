import 'package:json_annotation/json_annotation.dart';

part 'authentication_entity.g.dart';

@JsonSerializable()
class AuthenticationEntity {
  final String token;

  const AuthenticationEntity({
    required this.token,
  });

  factory AuthenticationEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationEntityFromJson(json);
  Map<String, dynamic> toJson() => _$AuthenticationEntityToJson(this);
}

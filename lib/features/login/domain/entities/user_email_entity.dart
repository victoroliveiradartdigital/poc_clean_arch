import 'package:json_annotation/json_annotation.dart';

part 'user_email_entity.g.dart';

@JsonSerializable()
class UserEmailEntity {
  final int id;
  @JsonKey(name: 'user_id')
  final String userId;
  final String email;
  final bool verified;
  final bool primary;

  const UserEmailEntity({
    required this.id,
    required this.userId,
    required this.email,
    required this.verified,
    required this.primary,
  });

  factory UserEmailEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEmailEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserEmailEntityToJson(this);
}

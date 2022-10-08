import 'package:json_annotation/json_annotation.dart';

part 'user_phone_entity.g.dart';

@JsonSerializable()
class UserPhoneEntity {
  final int id;
  @JsonKey(name: 'user_id')
  final String userId;
  @JsonKey(name: 'phone_type')
  final PhoneType phoneType;
  final String phone;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  const UserPhoneEntity({
    required this.id,
    required this.userId,
    required this.phoneType,
    required this.phone,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserPhoneEntity.fromJson(Map<String, dynamic> json) =>
      _$UserPhoneEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserPhoneEntityToJson(this);
}

enum PhoneType { CELLPHONE, BUSINESS_PHONE, LANDLINE_PHONE, OTHER }

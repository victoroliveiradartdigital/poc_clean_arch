import 'package:json_annotation/json_annotation.dart';
import 'package:poc_clean_arch/features/login/domain/entities/user_address_entity.dart';
import 'package:poc_clean_arch/features/login/domain/entities/user_email_entity.dart';
import 'package:poc_clean_arch/features/login/domain/entities/user_phone_entity.dart';

part 'user_entity.g.dart';

@JsonSerializable()
class UserEntity {
  final int id;
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;
  final String name;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  @JsonKey(name: 'taxpayer_id')
  final String taxPayerId;
  @JsonKey(name: 'taxpayer_id_formatted')
  final String taxPayerIdFormatted;
  @JsonKey(name: 'identity_document')
  final String identityDocument;
  final String birthday;
  @JsonKey(name: 'is_blocked')
  final String isBlocked;
  @JsonKey(name: 'is_staff')
  final String isStaff;
  @JsonKey(name: 'is_active')
  final String isActive;
  @JsonKey(name: 'date_joined')
  final String dateJoined;
  final UserEmailEntity emails;
  final UserPhoneEntity phones;
  final UserAddressEntity addresses;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  const UserEntity({
    required this.id,
    required this.avatarUrl,
    required this.name,
    required this.firstName,
    required this.lastName,
    required this.taxPayerId,
    required this.taxPayerIdFormatted,
    required this.identityDocument,
    required this.birthday,
    required this.isBlocked,
    required this.isStaff,
    required this.isActive,
    required this.dateJoined,
    required this.emails,
    required this.phones,
    required this.addresses,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}

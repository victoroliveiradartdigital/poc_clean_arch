// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      id: json['id'] as int,
      avatarUrl: json['avatar_url'] as String,
      name: json['name'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      taxPayerId: json['taxpayer_id'] as String,
      taxPayerIdFormatted: json['taxpayer_id_formatted'] as String,
      identityDocument: json['identity_document'] as String,
      birthday: json['birthday'] as String,
      isBlocked: json['is_blocked'] as String,
      isStaff: json['is_staff'] as String,
      isActive: json['is_active'] as String,
      dateJoined: json['date_joined'] as String,
      emails: UserEmailEntity.fromJson(json['emails'] as Map<String, dynamic>),
      phones: UserPhoneEntity.fromJson(json['phones'] as Map<String, dynamic>),
      addresses:
          UserAddressEntity.fromJson(json['addresses'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'name': instance.name,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'taxpayer_id': instance.taxPayerId,
      'taxpayer_id_formatted': instance.taxPayerIdFormatted,
      'identity_document': instance.identityDocument,
      'birthday': instance.birthday,
      'is_blocked': instance.isBlocked,
      'is_staff': instance.isStaff,
      'is_active': instance.isActive,
      'date_joined': instance.dateJoined,
      'emails': instance.emails,
      'phones': instance.phones,
      'addresses': instance.addresses,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

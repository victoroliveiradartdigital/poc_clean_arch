// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_email_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEmailEntity _$UserEmailEntityFromJson(Map<String, dynamic> json) =>
    UserEmailEntity(
      id: json['id'] as int,
      userId: json['user_id'] as String,
      email: json['email'] as String,
      verified: json['verified'] as bool,
      primary: json['primary'] as bool,
    );

Map<String, dynamic> _$UserEmailEntityToJson(UserEmailEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'email': instance.email,
      'verified': instance.verified,
      'primary': instance.primary,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_phone_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPhoneEntity _$UserPhoneEntityFromJson(Map<String, dynamic> json) =>
    UserPhoneEntity(
      id: json['id'] as int,
      userId: json['user_id'] as String,
      phoneType: $enumDecode(_$PhoneTypeEnumMap, json['phone_type']),
      phone: json['phone'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$UserPhoneEntityToJson(UserPhoneEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'phone_type': _$PhoneTypeEnumMap[instance.phoneType]!,
      'phone': instance.phone,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

const _$PhoneTypeEnumMap = {
  PhoneType.CELLPHONE: 'CELLPHONE',
  PhoneType.BUSINESS_PHONE: 'BUSINESS_PHONE',
  PhoneType.LANDLINE_PHONE: 'LANDLINE_PHONE',
  PhoneType.OTHER: 'OTHER',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAddressEntity _$UserAddressEntityFromJson(Map<String, dynamic> json) =>
    UserAddressEntity(
      id: json['id'] as int,
      userId: json['user_id'] as String,
      postalCode: json['postal_code'] as String,
      address1: json['address_1'] as String,
      number: json['number'] as String,
      address2: json['address_2'] as String,
      neighborhood: json['neighborhood'] as String,
      locality: json['locality'] as String,
      state: json['state'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$UserAddressEntityToJson(UserAddressEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'postal_code': instance.postalCode,
      'address_1': instance.address1,
      'number': instance.number,
      'address_2': instance.address2,
      'neighborhood': instance.neighborhood,
      'locality': instance.locality,
      'state': instance.state,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

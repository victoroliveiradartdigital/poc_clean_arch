// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationEntity _$AuthenticationEntityFromJson(
        Map<String, dynamic> json) =>
    AuthenticationEntity(
      access: json['access'] as String,
      refresh: json['refresh'] as String,
      expireIn: json['expireIn'] as String,
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthenticationEntityToJson(
        AuthenticationEntity instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
      'expireIn': instance.expireIn,
      'user': instance.user,
    };

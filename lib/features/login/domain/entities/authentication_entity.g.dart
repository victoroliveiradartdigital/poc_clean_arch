// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationEntity _$AuthenticationEntityFromJson(
        Map<String, dynamic> json) =>
    AuthenticationEntity(
      token: json['token'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$AuthenticationEntityToJson(
        AuthenticationEntity instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };

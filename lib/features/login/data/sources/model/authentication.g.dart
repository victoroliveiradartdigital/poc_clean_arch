// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Authentication _$$_AuthenticationFromJson(Map<String, dynamic> json) =>
    _$_Authentication(
      access: json['access'] as String,
      refresh: json['refresh'] as String,
      expireIn: json['expireIn'] as String,
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthenticationToJson(_$_Authentication instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
      'expireIn': instance.expireIn,
      'user': instance.user,
    };

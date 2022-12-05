// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'authentication.freezed.dart';

@freezed
class AuthenticationEntity with _$AuthenticationEntity {
  const AuthenticationEntity._();

  const factory AuthenticationEntity({
    required String accessToken,
    required String refreshToken,
    required int expiresIn,
  }) = _AuthenticationEntity;

  bool get isExpired => expiresIn < DateTime.now().millisecondsSinceEpoch;
}

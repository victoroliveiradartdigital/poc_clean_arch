// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'authentication.freezed.dart';
part 'authentication.g.dart';

@freezed
class AuthenticationModel with _$AuthenticationModel {
  const factory AuthenticationModel({
    required String accessToken,
    required String refreshToken,
    required int expiresIn,
  }) = _AuthenticationModel;

  factory AuthenticationModel.fromJson(Map<String, Object?> json) =>
      _$AuthenticationModelFromJson(json);
}

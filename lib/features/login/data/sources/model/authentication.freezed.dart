// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Authentication _$AuthenticationFromJson(Map<String, dynamic> json) {
  return _Authentication.fromJson(json);
}

/// @nodoc
mixin _$Authentication {
  String get token => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationCopyWith<Authentication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationCopyWith<$Res> {
  factory $AuthenticationCopyWith(
          Authentication value, $Res Function(Authentication) then) =
      _$AuthenticationCopyWithImpl<$Res>;
  $Res call({String token, String refreshToken});
}

/// @nodoc
class _$AuthenticationCopyWithImpl<$Res>
    implements $AuthenticationCopyWith<$Res> {
  _$AuthenticationCopyWithImpl(this._value, this._then);

  final Authentication _value;
  // ignore: unused_field
  final $Res Function(Authentication) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthenticationCopyWith<$Res>
    implements $AuthenticationCopyWith<$Res> {
  factory _$$_AuthenticationCopyWith(
          _$_Authentication value, $Res Function(_$_Authentication) then) =
      __$$_AuthenticationCopyWithImpl<$Res>;
  @override
  $Res call({String token, String refreshToken});
}

/// @nodoc
class __$$_AuthenticationCopyWithImpl<$Res>
    extends _$AuthenticationCopyWithImpl<$Res>
    implements _$$_AuthenticationCopyWith<$Res> {
  __$$_AuthenticationCopyWithImpl(
      _$_Authentication _value, $Res Function(_$_Authentication) _then)
      : super(_value, (v) => _then(v as _$_Authentication));

  @override
  _$_Authentication get _value => super._value as _$_Authentication;

  @override
  $Res call({
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$_Authentication(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Authentication implements _Authentication {
  const _$_Authentication({required this.token, required this.refreshToken});

  factory _$_Authentication.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticationFromJson(json);

  @override
  final String token;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'Authentication(token: $token, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authentication &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(refreshToken));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticationCopyWith<_$_Authentication> get copyWith =>
      __$$_AuthenticationCopyWithImpl<_$_Authentication>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticationToJson(
      this,
    );
  }
}

abstract class _Authentication implements Authentication {
  const factory _Authentication(
      {required final String token,
      required final String refreshToken}) = _$_Authentication;

  factory _Authentication.fromJson(Map<String, dynamic> json) =
      _$_Authentication.fromJson;

  @override
  String get token;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationCopyWith<_$_Authentication> get copyWith =>
      throw _privateConstructorUsedError;
}

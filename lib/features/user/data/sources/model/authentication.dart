import 'package:json_annotation/json_annotation.dart';
import 'package:poc_clean_arch/features/user/domain/entities/authentication_entity.dart';

part 'authentication.g.dart';

@JsonSerializable()
class Authentication extends AuthenticationEntity {
  const Authentication({required String token}) : super(token: token);

  factory Authentication.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AuthenticationToJson(this);
}

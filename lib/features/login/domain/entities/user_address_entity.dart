import 'package:json_annotation/json_annotation.dart';

part 'user_address_entity.g.dart';

@JsonSerializable()
class UserAddressEntity {
  final int id;
  @JsonKey(name: 'user_id')
  final String userId;
  @JsonKey(name: 'postal_code')
  final String postalCode;
  @JsonKey(name: 'address_1')
  final String address1;
  final String number;
  @JsonKey(name: 'address_2')
  final String address2;
  final String neighborhood;
  final String locality;
  final String state;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  const UserAddressEntity({
    required this.id,
    required this.userId,
    required this.postalCode,
    required this.address1,
    required this.number,
    required this.address2,
    required this.neighborhood,
    required this.locality,
    required this.state,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserAddressEntity.fromJson(Map<String, dynamic> json) =>
      _$UserAddressEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserAddressEntityToJson(this);
}

import 'package:flutter_flow/src/src.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.entity.freezed.dart';
part 'auth.entity.g.dart';

@freezed
class AuthEntity with _$AuthEntity {
  const factory AuthEntity({
    required String token,
    required AuthenticatedUser user,
  }) = _AuthEntity;

  factory AuthEntity.fromJson(Object? json) =>
      _$AuthEntityFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}

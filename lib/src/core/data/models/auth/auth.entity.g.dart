// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthEntity _$$_AuthEntityFromJson(Map<String, dynamic> json) =>
    _$_AuthEntity(
      token: json['token'] as String,
      user: AuthenticatedUser.fromJson(json['user'] as Object),
    );

Map<String, dynamic> _$$_AuthEntityToJson(_$_AuthEntity instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };

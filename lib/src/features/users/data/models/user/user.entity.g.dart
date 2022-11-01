// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticatedUser _$$_AuthenticatedUserFromJson(Map<String, dynamic> json) =>
    _$_AuthenticatedUser(
      id: json['id'] as int,
      email: json['email'] as String,
      lastName: json['last_name'] as String,
      firstName: json['first_name'] as String,
    );

Map<String, dynamic> _$$_AuthenticatedUserToJson(
        _$_AuthenticatedUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'last_name': instance.lastName,
      'first_name': instance.firstName,
    };

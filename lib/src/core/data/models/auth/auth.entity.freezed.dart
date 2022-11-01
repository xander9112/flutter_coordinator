// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthEntity _$AuthEntityFromJson(Map<String, dynamic> json) {
  return _AuthEntity.fromJson(json);
}

/// @nodoc
mixin _$AuthEntity {
  String get token => throw _privateConstructorUsedError;
  AuthenticatedUser get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthEntityCopyWith<AuthEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEntityCopyWith<$Res> {
  factory $AuthEntityCopyWith(
          AuthEntity value, $Res Function(AuthEntity) then) =
      _$AuthEntityCopyWithImpl<$Res>;
  $Res call({String token, AuthenticatedUser user});

  $AuthenticatedUserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthEntityCopyWithImpl<$Res> implements $AuthEntityCopyWith<$Res> {
  _$AuthEntityCopyWithImpl(this._value, this._then);

  final AuthEntity _value;
  // ignore: unused_field
  final $Res Function(AuthEntity) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthenticatedUser,
    ));
  }

  @override
  $AuthenticatedUserCopyWith<$Res> get user {
    return $AuthenticatedUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_AuthEntityCopyWith<$Res>
    implements $AuthEntityCopyWith<$Res> {
  factory _$$_AuthEntityCopyWith(
          _$_AuthEntity value, $Res Function(_$_AuthEntity) then) =
      __$$_AuthEntityCopyWithImpl<$Res>;
  @override
  $Res call({String token, AuthenticatedUser user});

  @override
  $AuthenticatedUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthEntityCopyWithImpl<$Res> extends _$AuthEntityCopyWithImpl<$Res>
    implements _$$_AuthEntityCopyWith<$Res> {
  __$$_AuthEntityCopyWithImpl(
      _$_AuthEntity _value, $Res Function(_$_AuthEntity) _then)
      : super(_value, (v) => _then(v as _$_AuthEntity));

  @override
  _$_AuthEntity get _value => super._value as _$_AuthEntity;

  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_AuthEntity(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthenticatedUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthEntity implements _AuthEntity {
  const _$_AuthEntity({required this.token, required this.user});

  factory _$_AuthEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AuthEntityFromJson(json);

  @override
  final String token;
  @override
  final AuthenticatedUser user;

  @override
  String toString() {
    return 'AuthEntity(token: $token, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEntity &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_AuthEntityCopyWith<_$_AuthEntity> get copyWith =>
      __$$_AuthEntityCopyWithImpl<_$_AuthEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthEntityToJson(
      this,
    );
  }
}

abstract class _AuthEntity implements AuthEntity {
  const factory _AuthEntity(
      {required final String token,
      required final AuthenticatedUser user}) = _$_AuthEntity;

  factory _AuthEntity.fromJson(Map<String, dynamic> json) =
      _$_AuthEntity.fromJson;

  @override
  String get token;
  @override
  AuthenticatedUser get user;
  @override
  @JsonKey(ignore: true)
  _$$_AuthEntityCopyWith<_$_AuthEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

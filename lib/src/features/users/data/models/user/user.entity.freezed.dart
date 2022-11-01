// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticatedUser _$AuthenticatedUserFromJson(Map<String, dynamic> json) {
  return _AuthenticatedUser.fromJson(json);
}

/// @nodoc
mixin _$AuthenticatedUser {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticatedUserCopyWith<AuthenticatedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedUserCopyWith<$Res> {
  factory $AuthenticatedUserCopyWith(
          AuthenticatedUser value, $Res Function(AuthenticatedUser) then) =
      _$AuthenticatedUserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String email,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'first_name') String firstName});
}

/// @nodoc
class _$AuthenticatedUserCopyWithImpl<$Res>
    implements $AuthenticatedUserCopyWith<$Res> {
  _$AuthenticatedUserCopyWithImpl(this._value, this._then);

  final AuthenticatedUser _value;
  // ignore: unused_field
  final $Res Function(AuthenticatedUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? lastName = freezed,
    Object? firstName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthenticatedUserCopyWith<$Res>
    implements $AuthenticatedUserCopyWith<$Res> {
  factory _$$_AuthenticatedUserCopyWith(_$_AuthenticatedUser value,
          $Res Function(_$_AuthenticatedUser) then) =
      __$$_AuthenticatedUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String email,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'first_name') String firstName});
}

/// @nodoc
class __$$_AuthenticatedUserCopyWithImpl<$Res>
    extends _$AuthenticatedUserCopyWithImpl<$Res>
    implements _$$_AuthenticatedUserCopyWith<$Res> {
  __$$_AuthenticatedUserCopyWithImpl(
      _$_AuthenticatedUser _value, $Res Function(_$_AuthenticatedUser) _then)
      : super(_value, (v) => _then(v as _$_AuthenticatedUser));

  @override
  _$_AuthenticatedUser get _value => super._value as _$_AuthenticatedUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? lastName = freezed,
    Object? firstName = freezed,
  }) {
    return _then(_$_AuthenticatedUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticatedUser extends _AuthenticatedUser {
  const _$_AuthenticatedUser(
      {required this.id,
      required this.email,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'first_name') required this.firstName})
      : super._();

  factory _$_AuthenticatedUser.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticatedUserFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;

  @override
  String toString() {
    return 'AuthenticatedUser(id: $id, email: $email, lastName: $lastName, firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticatedUser &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.firstName, firstName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(firstName));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticatedUserCopyWith<_$_AuthenticatedUser> get copyWith =>
      __$$_AuthenticatedUserCopyWithImpl<_$_AuthenticatedUser>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticatedUserToJson(
      this,
    );
  }
}

abstract class _AuthenticatedUser extends AuthenticatedUser {
  const factory _AuthenticatedUser(
          {required final int id,
          required final String email,
          @JsonKey(name: 'last_name') required final String lastName,
          @JsonKey(name: 'first_name') required final String firstName}) =
      _$_AuthenticatedUser;
  const _AuthenticatedUser._() : super._();

  factory _AuthenticatedUser.fromJson(Map<String, dynamic> json) =
      _$_AuthenticatedUser.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticatedUserCopyWith<_$_AuthenticatedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

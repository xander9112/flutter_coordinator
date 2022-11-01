// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAuth, bool hasPinCode) start,
    required TResult Function(bool hasPinCode) login,
    required TResult Function() verify,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isAuth, bool hasPinCode)? start,
    TResult Function(bool hasPinCode)? login,
    TResult Function()? verify,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAuth, bool hasPinCode)? start,
    TResult Function(bool hasPinCode)? login,
    TResult Function()? verify,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) start,
    required TResult Function(_Login value) login,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? start,
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    TResult Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? start,
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  $Res call({bool isAuth, bool hasPinCode});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;

  @override
  $Res call({
    Object? isAuth = freezed,
    Object? hasPinCode = freezed,
  }) {
    return _then(_$_Started(
      isAuth: isAuth == freezed
          ? _value.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPinCode: hasPinCode == freezed
          ? _value.hasPinCode
          : hasPinCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({this.isAuth = false, this.hasPinCode = false});

  @override
  @JsonKey()
  final bool isAuth;
  @override
  @JsonKey()
  final bool hasPinCode;

  @override
  String toString() {
    return 'AuthEvent.start(isAuth: $isAuth, hasPinCode: $hasPinCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality().equals(other.isAuth, isAuth) &&
            const DeepCollectionEquality()
                .equals(other.hasPinCode, hasPinCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isAuth),
      const DeepCollectionEquality().hash(hasPinCode));

  @JsonKey(ignore: true)
  @override
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAuth, bool hasPinCode) start,
    required TResult Function(bool hasPinCode) login,
    required TResult Function() verify,
    required TResult Function() logout,
  }) {
    return start(isAuth, hasPinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isAuth, bool hasPinCode)? start,
    TResult Function(bool hasPinCode)? login,
    TResult Function()? verify,
    TResult Function()? logout,
  }) {
    return start?.call(isAuth, hasPinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAuth, bool hasPinCode)? start,
    TResult Function(bool hasPinCode)? login,
    TResult Function()? verify,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(isAuth, hasPinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) start,
    required TResult Function(_Login value) login,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Logout value) logout,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? start,
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    TResult Function(_Logout value)? logout,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? start,
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started({final bool isAuth, final bool hasPinCode}) =
      _$_Started;

  bool get isAuth;
  bool get hasPinCode;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  $Res call({bool hasPinCode});
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, (v) => _then(v as _$_Login));

  @override
  _$_Login get _value => super._value as _$_Login;

  @override
  $Res call({
    Object? hasPinCode = freezed,
  }) {
    return _then(_$_Login(
      hasPinCode: hasPinCode == freezed
          ? _value.hasPinCode
          : hasPinCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login({this.hasPinCode = false});

  @override
  @JsonKey()
  final bool hasPinCode;

  @override
  String toString() {
    return 'AuthEvent.login(hasPinCode: $hasPinCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
            const DeepCollectionEquality()
                .equals(other.hasPinCode, hasPinCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(hasPinCode));

  @JsonKey(ignore: true)
  @override
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAuth, bool hasPinCode) start,
    required TResult Function(bool hasPinCode) login,
    required TResult Function() verify,
    required TResult Function() logout,
  }) {
    return login(hasPinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isAuth, bool hasPinCode)? start,
    TResult Function(bool hasPinCode)? login,
    TResult Function()? verify,
    TResult Function()? logout,
  }) {
    return login?.call(hasPinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAuth, bool hasPinCode)? start,
    TResult Function(bool hasPinCode)? login,
    TResult Function()? verify,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(hasPinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) start,
    required TResult Function(_Login value) login,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Logout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? start,
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    TResult Function(_Logout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? start,
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login({final bool hasPinCode}) = _$_Login;

  bool get hasPinCode;
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerifyCopyWith<$Res> {
  factory _$$_VerifyCopyWith(_$_Verify value, $Res Function(_$_Verify) then) =
      __$$_VerifyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifyCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_VerifyCopyWith<$Res> {
  __$$_VerifyCopyWithImpl(_$_Verify _value, $Res Function(_$_Verify) _then)
      : super(_value, (v) => _then(v as _$_Verify));

  @override
  _$_Verify get _value => super._value as _$_Verify;
}

/// @nodoc

class _$_Verify implements _Verify {
  const _$_Verify();

  @override
  String toString() {
    return 'AuthEvent.verify()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Verify);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAuth, bool hasPinCode) start,
    required TResult Function(bool hasPinCode) login,
    required TResult Function() verify,
    required TResult Function() logout,
  }) {
    return verify();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isAuth, bool hasPinCode)? start,
    TResult Function(bool hasPinCode)? login,
    TResult Function()? verify,
    TResult Function()? logout,
  }) {
    return verify?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAuth, bool hasPinCode)? start,
    TResult Function(bool hasPinCode)? login,
    TResult Function()? verify,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) start,
    required TResult Function(_Login value) login,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Logout value) logout,
  }) {
    return verify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? start,
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    TResult Function(_Logout value)? logout,
  }) {
    return verify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? start,
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(this);
    }
    return orElse();
  }
}

abstract class _Verify implements AuthEvent {
  const factory _Verify() = _$_Verify;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, (v) => _then(v as _$_Logout));

  @override
  _$_Logout get _value => super._value as _$_Logout;
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAuth, bool hasPinCode) start,
    required TResult Function(bool hasPinCode) login,
    required TResult Function() verify,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isAuth, bool hasPinCode)? start,
    TResult Function(bool hasPinCode)? login,
    TResult Function()? verify,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAuth, bool hasPinCode)? start,
    TResult Function(bool hasPinCode)? login,
    TResult Function()? verify,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) start,
    required TResult Function(_Login value) login,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? start,
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    TResult Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? start,
    TResult Function(_Login value)? login,
    TResult Function(_Verify value)? verify,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool hasPinCode, String? token) auth,
    required TResult Function() verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool hasPinCode, String? token)? auth,
    TResult Function()? verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool hasPinCode, String? token)? auth,
    TResult Function()? verified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Auth value) auth,
    required TResult Function(_Verified value) verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Auth value)? auth,
    TResult Function(_Verified value)? verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Auth value)? auth,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool hasPinCode, String? token) auth,
    required TResult Function() verified,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool hasPinCode, String? token)? auth,
    TResult Function()? verified,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool hasPinCode, String? token)? auth,
    TResult Function()? verified,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Auth value) auth,
    required TResult Function(_Verified value) verified,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Auth value)? auth,
    TResult Function(_Verified value)? verified,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Auth value)? auth,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_AuthCopyWith<$Res> {
  factory _$$_AuthCopyWith(_$_Auth value, $Res Function(_$_Auth) then) =
      __$$_AuthCopyWithImpl<$Res>;
  $Res call({bool hasPinCode, String? token});
}

/// @nodoc
class __$$_AuthCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthCopyWith<$Res> {
  __$$_AuthCopyWithImpl(_$_Auth _value, $Res Function(_$_Auth) _then)
      : super(_value, (v) => _then(v as _$_Auth));

  @override
  _$_Auth get _value => super._value as _$_Auth;

  @override
  $Res call({
    Object? hasPinCode = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_Auth(
      hasPinCode == freezed
          ? _value.hasPinCode
          : hasPinCode // ignore: cast_nullable_to_non_nullable
              as bool,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Auth implements _Auth {
  const _$_Auth(this.hasPinCode, {this.token});

  @override
  final bool hasPinCode;
  @override
  final String? token;

  @override
  String toString() {
    return 'AuthState.auth(hasPinCode: $hasPinCode, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Auth &&
            const DeepCollectionEquality()
                .equals(other.hasPinCode, hasPinCode) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hasPinCode),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_AuthCopyWith<_$_Auth> get copyWith =>
      __$$_AuthCopyWithImpl<_$_Auth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool hasPinCode, String? token) auth,
    required TResult Function() verified,
  }) {
    return auth(hasPinCode, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool hasPinCode, String? token)? auth,
    TResult Function()? verified,
  }) {
    return auth?.call(hasPinCode, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool hasPinCode, String? token)? auth,
    TResult Function()? verified,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(hasPinCode, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Auth value) auth,
    required TResult Function(_Verified value) verified,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Auth value)? auth,
    TResult Function(_Verified value)? verified,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Auth value)? auth,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _Auth implements AuthState {
  const factory _Auth(final bool hasPinCode, {final String? token}) = _$_Auth;

  bool get hasPinCode;
  String? get token;
  @JsonKey(ignore: true)
  _$$_AuthCopyWith<_$_Auth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerifiedCopyWith<$Res> {
  factory _$$_VerifiedCopyWith(
          _$_Verified value, $Res Function(_$_Verified) then) =
      __$$_VerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifiedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_VerifiedCopyWith<$Res> {
  __$$_VerifiedCopyWithImpl(
      _$_Verified _value, $Res Function(_$_Verified) _then)
      : super(_value, (v) => _then(v as _$_Verified));

  @override
  _$_Verified get _value => super._value as _$_Verified;
}

/// @nodoc

class _$_Verified implements _Verified {
  const _$_Verified();

  @override
  String toString() {
    return 'AuthState.verified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Verified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool hasPinCode, String? token) auth,
    required TResult Function() verified,
  }) {
    return verified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool hasPinCode, String? token)? auth,
    TResult Function()? verified,
  }) {
    return verified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool hasPinCode, String? token)? auth,
    TResult Function()? verified,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Auth value) auth,
    required TResult Function(_Verified value) verified,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Auth value)? auth,
    TResult Function(_Verified value)? verified,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Auth value)? auth,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class _Verified implements AuthState {
  const factory _Verified() = _$_Verified;
}

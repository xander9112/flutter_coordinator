// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pin_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PinCodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasPinCode) started,
    required TResult Function(String pinCode) enterPinCode,
    required TResult Function(bool reset) deletePinCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasPinCode)? started,
    TResult Function(String pinCode)? enterPinCode,
    TResult Function(bool reset)? deletePinCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasPinCode)? started,
    TResult Function(String pinCode)? enterPinCode,
    TResult Function(bool reset)? deletePinCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EnterPinCode value) enterPinCode,
    required TResult Function(_DeletePinCode value) deletePinCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EnterPinCode value)? enterPinCode,
    TResult Function(_DeletePinCode value)? deletePinCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EnterPinCode value)? enterPinCode,
    TResult Function(_DeletePinCode value)? deletePinCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinCodeEventCopyWith<$Res> {
  factory $PinCodeEventCopyWith(
          PinCodeEvent value, $Res Function(PinCodeEvent) then) =
      _$PinCodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PinCodeEventCopyWithImpl<$Res> implements $PinCodeEventCopyWith<$Res> {
  _$PinCodeEventCopyWithImpl(this._value, this._then);

  final PinCodeEvent _value;
  // ignore: unused_field
  final $Res Function(PinCodeEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  $Res call({bool hasPinCode});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$PinCodeEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;

  @override
  $Res call({
    Object? hasPinCode = freezed,
  }) {
    return _then(_$_Started(
      hasPinCode == freezed
          ? _value.hasPinCode
          : hasPinCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.hasPinCode);

  @override
  final bool hasPinCode;

  @override
  String toString() {
    return 'PinCodeEvent.started(hasPinCode: $hasPinCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality()
                .equals(other.hasPinCode, hasPinCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(hasPinCode));

  @JsonKey(ignore: true)
  @override
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasPinCode) started,
    required TResult Function(String pinCode) enterPinCode,
    required TResult Function(bool reset) deletePinCode,
  }) {
    return started(hasPinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasPinCode)? started,
    TResult Function(String pinCode)? enterPinCode,
    TResult Function(bool reset)? deletePinCode,
  }) {
    return started?.call(hasPinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasPinCode)? started,
    TResult Function(String pinCode)? enterPinCode,
    TResult Function(bool reset)? deletePinCode,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(hasPinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EnterPinCode value) enterPinCode,
    required TResult Function(_DeletePinCode value) deletePinCode,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EnterPinCode value)? enterPinCode,
    TResult Function(_DeletePinCode value)? deletePinCode,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EnterPinCode value)? enterPinCode,
    TResult Function(_DeletePinCode value)? deletePinCode,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PinCodeEvent {
  const factory _Started(final bool hasPinCode) = _$_Started;

  bool get hasPinCode;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EnterPinCodeCopyWith<$Res> {
  factory _$$_EnterPinCodeCopyWith(
          _$_EnterPinCode value, $Res Function(_$_EnterPinCode) then) =
      __$$_EnterPinCodeCopyWithImpl<$Res>;
  $Res call({String pinCode});
}

/// @nodoc
class __$$_EnterPinCodeCopyWithImpl<$Res>
    extends _$PinCodeEventCopyWithImpl<$Res>
    implements _$$_EnterPinCodeCopyWith<$Res> {
  __$$_EnterPinCodeCopyWithImpl(
      _$_EnterPinCode _value, $Res Function(_$_EnterPinCode) _then)
      : super(_value, (v) => _then(v as _$_EnterPinCode));

  @override
  _$_EnterPinCode get _value => super._value as _$_EnterPinCode;

  @override
  $Res call({
    Object? pinCode = freezed,
  }) {
    return _then(_$_EnterPinCode(
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EnterPinCode implements _EnterPinCode {
  const _$_EnterPinCode({required this.pinCode});

  @override
  final String pinCode;

  @override
  String toString() {
    return 'PinCodeEvent.enterPinCode(pinCode: $pinCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EnterPinCode &&
            const DeepCollectionEquality().equals(other.pinCode, pinCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pinCode));

  @JsonKey(ignore: true)
  @override
  _$$_EnterPinCodeCopyWith<_$_EnterPinCode> get copyWith =>
      __$$_EnterPinCodeCopyWithImpl<_$_EnterPinCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasPinCode) started,
    required TResult Function(String pinCode) enterPinCode,
    required TResult Function(bool reset) deletePinCode,
  }) {
    return enterPinCode(pinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasPinCode)? started,
    TResult Function(String pinCode)? enterPinCode,
    TResult Function(bool reset)? deletePinCode,
  }) {
    return enterPinCode?.call(pinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasPinCode)? started,
    TResult Function(String pinCode)? enterPinCode,
    TResult Function(bool reset)? deletePinCode,
    required TResult orElse(),
  }) {
    if (enterPinCode != null) {
      return enterPinCode(pinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EnterPinCode value) enterPinCode,
    required TResult Function(_DeletePinCode value) deletePinCode,
  }) {
    return enterPinCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EnterPinCode value)? enterPinCode,
    TResult Function(_DeletePinCode value)? deletePinCode,
  }) {
    return enterPinCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EnterPinCode value)? enterPinCode,
    TResult Function(_DeletePinCode value)? deletePinCode,
    required TResult orElse(),
  }) {
    if (enterPinCode != null) {
      return enterPinCode(this);
    }
    return orElse();
  }
}

abstract class _EnterPinCode implements PinCodeEvent {
  const factory _EnterPinCode({required final String pinCode}) =
      _$_EnterPinCode;

  String get pinCode;
  @JsonKey(ignore: true)
  _$$_EnterPinCodeCopyWith<_$_EnterPinCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeletePinCodeCopyWith<$Res> {
  factory _$$_DeletePinCodeCopyWith(
          _$_DeletePinCode value, $Res Function(_$_DeletePinCode) then) =
      __$$_DeletePinCodeCopyWithImpl<$Res>;
  $Res call({bool reset});
}

/// @nodoc
class __$$_DeletePinCodeCopyWithImpl<$Res>
    extends _$PinCodeEventCopyWithImpl<$Res>
    implements _$$_DeletePinCodeCopyWith<$Res> {
  __$$_DeletePinCodeCopyWithImpl(
      _$_DeletePinCode _value, $Res Function(_$_DeletePinCode) _then)
      : super(_value, (v) => _then(v as _$_DeletePinCode));

  @override
  _$_DeletePinCode get _value => super._value as _$_DeletePinCode;

  @override
  $Res call({
    Object? reset = freezed,
  }) {
    return _then(_$_DeletePinCode(
      reset: reset == freezed
          ? _value.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DeletePinCode implements _DeletePinCode {
  const _$_DeletePinCode({this.reset = false});

  @override
  @JsonKey()
  final bool reset;

  @override
  String toString() {
    return 'PinCodeEvent.deletePinCode(reset: $reset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletePinCode &&
            const DeepCollectionEquality().equals(other.reset, reset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reset));

  @JsonKey(ignore: true)
  @override
  _$$_DeletePinCodeCopyWith<_$_DeletePinCode> get copyWith =>
      __$$_DeletePinCodeCopyWithImpl<_$_DeletePinCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasPinCode) started,
    required TResult Function(String pinCode) enterPinCode,
    required TResult Function(bool reset) deletePinCode,
  }) {
    return deletePinCode(reset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasPinCode)? started,
    TResult Function(String pinCode)? enterPinCode,
    TResult Function(bool reset)? deletePinCode,
  }) {
    return deletePinCode?.call(reset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasPinCode)? started,
    TResult Function(String pinCode)? enterPinCode,
    TResult Function(bool reset)? deletePinCode,
    required TResult orElse(),
  }) {
    if (deletePinCode != null) {
      return deletePinCode(reset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EnterPinCode value) enterPinCode,
    required TResult Function(_DeletePinCode value) deletePinCode,
  }) {
    return deletePinCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EnterPinCode value)? enterPinCode,
    TResult Function(_DeletePinCode value)? deletePinCode,
  }) {
    return deletePinCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EnterPinCode value)? enterPinCode,
    TResult Function(_DeletePinCode value)? deletePinCode,
    required TResult orElse(),
  }) {
    if (deletePinCode != null) {
      return deletePinCode(this);
    }
    return orElse();
  }
}

abstract class _DeletePinCode implements PinCodeEvent {
  const factory _DeletePinCode({final bool reset}) = _$_DeletePinCode;

  bool get reset;
  @JsonKey(ignore: true)
  _$$_DeletePinCodeCopyWith<_$_DeletePinCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PinCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, bool hasPinCode, int attempts)
        initial,
    required TResult Function(String tempPinCode, String pinCode) repeat,
    required TResult Function(bool hasPinCode, String? pinCode) success,
    required TResult Function(String error, bool logout) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pinCode, bool hasPinCode, int attempts)? initial,
    TResult Function(String tempPinCode, String pinCode)? repeat,
    TResult Function(bool hasPinCode, String? pinCode)? success,
    TResult Function(String error, bool logout)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, bool hasPinCode, int attempts)? initial,
    TResult Function(String tempPinCode, String pinCode)? repeat,
    TResult Function(bool hasPinCode, String? pinCode)? success,
    TResult Function(String error, bool logout)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Repeat value) repeat,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Repeat value)? repeat,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Repeat value)? repeat,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinCodeStateCopyWith<$Res> {
  factory $PinCodeStateCopyWith(
          PinCodeState value, $Res Function(PinCodeState) then) =
      _$PinCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PinCodeStateCopyWithImpl<$Res> implements $PinCodeStateCopyWith<$Res> {
  _$PinCodeStateCopyWithImpl(this._value, this._then);

  final PinCodeState _value;
  // ignore: unused_field
  final $Res Function(PinCodeState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  $Res call({String pinCode, bool hasPinCode, int attempts});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$PinCodeStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? pinCode = freezed,
    Object? hasPinCode = freezed,
    Object? attempts = freezed,
  }) {
    return _then(_$_Initial(
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      hasPinCode: hasPinCode == freezed
          ? _value.hasPinCode
          : hasPinCode // ignore: cast_nullable_to_non_nullable
              as bool,
      attempts: attempts == freezed
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.pinCode = '', this.hasPinCode = false, this.attempts = 0});

  @override
  @JsonKey()
  final String pinCode;
  @override
  @JsonKey()
  final bool hasPinCode;
  @override
  @JsonKey()
  final int attempts;

  @override
  String toString() {
    return 'PinCodeState.initial(pinCode: $pinCode, hasPinCode: $hasPinCode, attempts: $attempts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.pinCode, pinCode) &&
            const DeepCollectionEquality()
                .equals(other.hasPinCode, hasPinCode) &&
            const DeepCollectionEquality().equals(other.attempts, attempts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pinCode),
      const DeepCollectionEquality().hash(hasPinCode),
      const DeepCollectionEquality().hash(attempts));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, bool hasPinCode, int attempts)
        initial,
    required TResult Function(String tempPinCode, String pinCode) repeat,
    required TResult Function(bool hasPinCode, String? pinCode) success,
    required TResult Function(String error, bool logout) error,
  }) {
    return initial(pinCode, hasPinCode, attempts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pinCode, bool hasPinCode, int attempts)? initial,
    TResult Function(String tempPinCode, String pinCode)? repeat,
    TResult Function(bool hasPinCode, String? pinCode)? success,
    TResult Function(String error, bool logout)? error,
  }) {
    return initial?.call(pinCode, hasPinCode, attempts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, bool hasPinCode, int attempts)? initial,
    TResult Function(String tempPinCode, String pinCode)? repeat,
    TResult Function(bool hasPinCode, String? pinCode)? success,
    TResult Function(String error, bool logout)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(pinCode, hasPinCode, attempts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Repeat value) repeat,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Repeat value)? repeat,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Repeat value)? repeat,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PinCodeState {
  const factory _Initial(
      {final String pinCode,
      final bool hasPinCode,
      final int attempts}) = _$_Initial;

  String get pinCode;
  bool get hasPinCode;
  int get attempts;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RepeatCopyWith<$Res> {
  factory _$$_RepeatCopyWith(_$_Repeat value, $Res Function(_$_Repeat) then) =
      __$$_RepeatCopyWithImpl<$Res>;
  $Res call({String tempPinCode, String pinCode});
}

/// @nodoc
class __$$_RepeatCopyWithImpl<$Res> extends _$PinCodeStateCopyWithImpl<$Res>
    implements _$$_RepeatCopyWith<$Res> {
  __$$_RepeatCopyWithImpl(_$_Repeat _value, $Res Function(_$_Repeat) _then)
      : super(_value, (v) => _then(v as _$_Repeat));

  @override
  _$_Repeat get _value => super._value as _$_Repeat;

  @override
  $Res call({
    Object? tempPinCode = freezed,
    Object? pinCode = freezed,
  }) {
    return _then(_$_Repeat(
      tempPinCode: tempPinCode == freezed
          ? _value.tempPinCode
          : tempPinCode // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Repeat implements _Repeat {
  const _$_Repeat({required this.tempPinCode, this.pinCode = ''});

  @override
  final String tempPinCode;
  @override
  @JsonKey()
  final String pinCode;

  @override
  String toString() {
    return 'PinCodeState.repeat(tempPinCode: $tempPinCode, pinCode: $pinCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Repeat &&
            const DeepCollectionEquality()
                .equals(other.tempPinCode, tempPinCode) &&
            const DeepCollectionEquality().equals(other.pinCode, pinCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tempPinCode),
      const DeepCollectionEquality().hash(pinCode));

  @JsonKey(ignore: true)
  @override
  _$$_RepeatCopyWith<_$_Repeat> get copyWith =>
      __$$_RepeatCopyWithImpl<_$_Repeat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, bool hasPinCode, int attempts)
        initial,
    required TResult Function(String tempPinCode, String pinCode) repeat,
    required TResult Function(bool hasPinCode, String? pinCode) success,
    required TResult Function(String error, bool logout) error,
  }) {
    return repeat(tempPinCode, pinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pinCode, bool hasPinCode, int attempts)? initial,
    TResult Function(String tempPinCode, String pinCode)? repeat,
    TResult Function(bool hasPinCode, String? pinCode)? success,
    TResult Function(String error, bool logout)? error,
  }) {
    return repeat?.call(tempPinCode, pinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, bool hasPinCode, int attempts)? initial,
    TResult Function(String tempPinCode, String pinCode)? repeat,
    TResult Function(bool hasPinCode, String? pinCode)? success,
    TResult Function(String error, bool logout)? error,
    required TResult orElse(),
  }) {
    if (repeat != null) {
      return repeat(tempPinCode, pinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Repeat value) repeat,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return repeat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Repeat value)? repeat,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return repeat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Repeat value)? repeat,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (repeat != null) {
      return repeat(this);
    }
    return orElse();
  }
}

abstract class _Repeat implements PinCodeState {
  const factory _Repeat(
      {required final String tempPinCode, final String pinCode}) = _$_Repeat;

  String get tempPinCode;
  String get pinCode;
  @JsonKey(ignore: true)
  _$$_RepeatCopyWith<_$_Repeat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call({bool hasPinCode, String? pinCode});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$PinCodeStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? hasPinCode = freezed,
    Object? pinCode = freezed,
  }) {
    return _then(_$_Success(
      hasPinCode: hasPinCode == freezed
          ? _value.hasPinCode
          : hasPinCode // ignore: cast_nullable_to_non_nullable
              as bool,
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({this.hasPinCode = false, this.pinCode});

  @override
  @JsonKey()
  final bool hasPinCode;
  @override
  final String? pinCode;

  @override
  String toString() {
    return 'PinCodeState.success(hasPinCode: $hasPinCode, pinCode: $pinCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality()
                .equals(other.hasPinCode, hasPinCode) &&
            const DeepCollectionEquality().equals(other.pinCode, pinCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hasPinCode),
      const DeepCollectionEquality().hash(pinCode));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, bool hasPinCode, int attempts)
        initial,
    required TResult Function(String tempPinCode, String pinCode) repeat,
    required TResult Function(bool hasPinCode, String? pinCode) success,
    required TResult Function(String error, bool logout) error,
  }) {
    return success(hasPinCode, pinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pinCode, bool hasPinCode, int attempts)? initial,
    TResult Function(String tempPinCode, String pinCode)? repeat,
    TResult Function(bool hasPinCode, String? pinCode)? success,
    TResult Function(String error, bool logout)? error,
  }) {
    return success?.call(hasPinCode, pinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, bool hasPinCode, int attempts)? initial,
    TResult Function(String tempPinCode, String pinCode)? repeat,
    TResult Function(bool hasPinCode, String? pinCode)? success,
    TResult Function(String error, bool logout)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(hasPinCode, pinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Repeat value) repeat,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Repeat value)? repeat,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Repeat value)? repeat,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements PinCodeState {
  const factory _Success({final bool hasPinCode, final String? pinCode}) =
      _$_Success;

  bool get hasPinCode;
  String? get pinCode;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({String error, bool logout});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$PinCodeStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? error = freezed,
    Object? logout = freezed,
  }) {
    return _then(_$_Error(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      logout: logout == freezed
          ? _value.logout
          : logout // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error, this.logout = false});

  @override
  final String error;
  @override
  @JsonKey()
  final bool logout;

  @override
  String toString() {
    return 'PinCodeState.error(error: $error, logout: $logout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.logout, logout));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(logout));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, bool hasPinCode, int attempts)
        initial,
    required TResult Function(String tempPinCode, String pinCode) repeat,
    required TResult Function(bool hasPinCode, String? pinCode) success,
    required TResult Function(String error, bool logout) error,
  }) {
    return error(this.error, logout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pinCode, bool hasPinCode, int attempts)? initial,
    TResult Function(String tempPinCode, String pinCode)? repeat,
    TResult Function(bool hasPinCode, String? pinCode)? success,
    TResult Function(String error, bool logout)? error,
  }) {
    return error?.call(this.error, logout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, bool hasPinCode, int attempts)? initial,
    TResult Function(String tempPinCode, String pinCode)? repeat,
    TResult Function(bool hasPinCode, String? pinCode)? success,
    TResult Function(String error, bool logout)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, logout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Repeat value) repeat,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Repeat value)? repeat,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Repeat value)? repeat,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PinCodeState {
  const factory _Error({required final String error, final bool logout}) =
      _$_Error;

  String get error;
  bool get logout;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

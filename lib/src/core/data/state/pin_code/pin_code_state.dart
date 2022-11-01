part of 'pin_code_bloc.dart';

@freezed
class PinCodeState with _$PinCodeState {
  const factory PinCodeState.initial({
    @Default('') String pinCode,
    @Default(false) bool hasPinCode,
    @Default(0) int attempts,
  }) = _Initial;

  const factory PinCodeState.repeat({
    required String tempPinCode,
    @Default('') String pinCode,
  }) = _Repeat;

  const factory PinCodeState.success({
    @Default(false) bool hasPinCode,
    String? pinCode,
  }) = _Success;

  const factory PinCodeState.error({
    required String error,
    @Default(false) bool logout,
  }) = _Error;
}

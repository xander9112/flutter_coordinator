part of 'pin_code_bloc.dart';

@freezed
class PinCodeEvent with _$PinCodeEvent {
  const factory PinCodeEvent.started(bool hasPinCode) = _Started;

  const factory PinCodeEvent.enterPinCode({required String pinCode}) =
      _EnterPinCode;

  const factory PinCodeEvent.updateUsePinCode({required bool usePinCode}) =
      _UpdateUsePinCode;
}

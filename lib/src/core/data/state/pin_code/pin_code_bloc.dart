import 'package:bloc/bloc.dart';
import 'package:flutter_flow/src/src.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'pin_code_bloc.freezed.dart';
part 'pin_code_event.dart';
part 'pin_code_state.dart';

class PinCodeBloc extends Bloc<PinCodeEvent, PinCodeState> {
  PinCodeBloc({
    IAuthStorage? storage,
  })  : _storage = storage ?? GetIt.I(),
        super(const _Initial()) {
    on<_Started>(_onPinCodeStarted);
    on<_EnterPinCode>(_onPinCodeEnter);
    on<_DeletePinCode>(_onPinCodeDelete);
  }

  final IAuthStorage _storage;

  Future<void> _onPinCodeEnter(
      _EnterPinCode event, Emitter<PinCodeState> emit) async {
    final bool hasPinCode = state.maybeMap(
      orElse: () => false,
      initial: (_) => _.hasPinCode,
    );
    final int attempts = state.maybeMap(
      orElse: () => 0,
      initial: (_) => _.attempts,
    );

    state.maybeWhen(
      orElse: () {},
      initial: (String pinCode, bool hasPinCode, int attempts) {
        emit(
          PinCodeState.initial(
            pinCode: pinCode + event.pinCode,
            hasPinCode: hasPinCode,
            attempts: attempts,
          ),
        );
      },
      repeat: (String tempPinCode, String pinCode) {
        emit(
          PinCodeState.repeat(
            tempPinCode: tempPinCode,
            pinCode: pinCode + event.pinCode,
          ),
        );
      },
    );

    final String pinCode = state.maybeMap(
      orElse: () => '',
      initial: (_) => _.pinCode,
      repeat: (_) => _.pinCode,
    );

    final int pinCodeLength = pinCode.length;

    if (pinCodeLength == AppConstants.pinCodeLength) {
      if (!hasPinCode) {
        if (state is _Initial) {
          await Future<dynamic>.delayed(const Duration(milliseconds: 100));

          emit(PinCodeState.repeat(tempPinCode: pinCode, pinCode: ''));
        } else {
          await Future<dynamic>.delayed(const Duration(milliseconds: 100));

          final String initialPinCode = state.maybeMap(
            orElse: () => '',
            repeat: (_) => _.tempPinCode,
          );

          if (initialPinCode != pinCode) {
            emit(const PinCodeState.error(error: 'Wrong PinCode'));

            await Future<dynamic>.delayed(const Duration(seconds: 1));

            emit(const PinCodeState.initial());
          } else {
            emit(
              PinCodeState.success(
                hasPinCode: hasPinCode,
                pinCode: initialPinCode,
              ),
            );
          }
        }
      } else {
        if (await _storage.comparePinCode(pinCode)) {
          await Future<dynamic>.delayed(const Duration(milliseconds: 100));

          emit(PinCodeState.success(hasPinCode: hasPinCode));
        } else {
          if (attempts == 3) {
            emit(
              const PinCodeState.error(
                error: 'Превышено количество попыток',
                logout: true,
              ),
            );

            emit(const PinCodeState.initial(hasPinCode: false));
          } else {
            emit(const PinCodeState.error(error: 'Wrong PinCode'));

            await Future<dynamic>.delayed(const Duration(seconds: 1));

            emit(
              PinCodeState.initial(
                hasPinCode: hasPinCode,
                attempts: attempts + 1,
              ),
            );
          }
        }
      }
    }
  }

  void _onPinCodeDelete(_DeletePinCode event, Emitter<PinCodeState> emit) {
    state.maybeWhen(
      orElse: () {},
      initial: (String pinCode, bool hasPinCode, int attempts) {
        if (pinCode.isNotEmpty) {
          emit(PinCodeState.initial(
            pinCode:
                event.reset ? '' : pinCode.substring(0, pinCode.length - 1),
            hasPinCode: hasPinCode,
            attempts: attempts,
          ));
        }
      },
      repeat: (String tempPinCode, String pinCode) {
        if (pinCode.isNotEmpty) {
          emit(PinCodeState.repeat(
            tempPinCode: tempPinCode,
            pinCode:
                event.reset ? '' : pinCode.substring(0, pinCode.length - 1),
          ));
        }
      },
    );
  }

  void _onPinCodeStarted(_Started event, Emitter<PinCodeState> emit) {
    emit(PinCodeState.initial(hasPinCode: event.hasPinCode));
  }
}

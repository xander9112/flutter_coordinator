import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../auth.dart';

part 'pin_code_event.dart';
part 'pin_code_state.dart';
part 'pin_code_bloc.freezed.dart';

class PinCodeBloc extends Bloc<PinCodeEvent, PinCodeState> {
  PinCodeBloc({
    AuthStorage? storage,
  })  : _storage = storage ?? GetIt.I(),
        super(const _Initial()) {
    on<_Started>(_onPinCodeStarted);
    on<_EnterPinCode>(_onPinCodeEnter);
    on<_UpdateUsePinCode>(_onUpdateUsePinCode);
  }

  final AuthStorage _storage;

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

    if (event.pinCode.length == 4) {
      if (hasPinCode) {
        if (await _storage.comparePinCode(event.pinCode)) {
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
      } else {
        if (state is _Initial) {
          emit(PinCodeState.repeat(pinCode: event.pinCode));
        } else {
          final String initialPinCode = state.maybeMap(
            orElse: () => '',
            repeat: (_) => _.pinCode,
          );

          if (initialPinCode != event.pinCode) {
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
      }
    }
  }

  void _onPinCodeStarted(_Started event, Emitter<PinCodeState> emit) {
    emit(PinCodeState.initial(hasPinCode: event.hasPinCode));
  }

  Future<void> _onUpdateUsePinCode(
      _UpdateUsePinCode event, Emitter<PinCodeState> emit) async {
    await _storage.setUsePinCode(event.usePinCode);

    state.maybeWhen(
      orElse: () {},
      initial: (bool hasPinCode, bool usePinCode, int attempts) {
        emit(PinCodeState.initial(
          hasPinCode: hasPinCode,
          usePinCode: event.usePinCode,
          attempts: attempts,
        ));
      },
      success: (bool hasPinCode, bool usePinCode, String? pinCode) {
        emit(PinCodeState.success(
          hasPinCode: hasPinCode,
          usePinCode: event.usePinCode,
          pinCode: pinCode,
        ));
      },
    );
  }
}

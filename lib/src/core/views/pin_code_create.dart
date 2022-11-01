import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flow/src/src.dart';

import 'widgets/_widgets.dart';

class PinCodeCreatePage extends StatefulWidget {
  const PinCodeCreatePage({required this.delegate, super.key});

  final PinCodePageDelegate delegate;

  @override
  State<PinCodeCreatePage> createState() => _PinCodeCreatePageState();
}

class _PinCodeCreatePageState extends State<PinCodeCreatePage>
    with WidgetsBindingObserver {
  PinCodePageDelegate get delegate => widget.delegate;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);

    super.initState();
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    if (AppLifecycleState.resumed == state) {
      delegate.onResumed();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: BlocBuilder<PinCodeBloc, PinCodeState>(
          bloc: delegate.pinCodeBloc,
          builder: (BuildContext context, PinCodeState state) {
            return Column(
              children: <Widget>[
                Expanded(
                  child: PinCodeHeader(
                    hasPinCode: false,
                    hasTemporaryCode: state.maybeMap(
                      orElse: () => false,
                      repeat: (_) => true,
                    ),
                    hasError: state.maybeMap(
                      orElse: () => false,
                      error: (_) => true,
                    ),
                    error: state.maybeMap(
                      orElse: () => '',
                      error: (_) => _.error,
                    ),
                    pinCodeLength: AppConstants.pinCodeLength,
                    pinFilledCodeLength: state.maybeMap(
                      orElse: () => 0,
                      initial: (_) => _.pinCode.length,
                      repeat: (_) => _.pinCode.length,
                    ),
                    isLoading: false,
                  ),
                ),
                Expanded(
                  child: PinCodeKeyboard(
                    onPressedNumber: delegate.onPinCodeEnter,
                    onDelete: delegate.onDeleteNumber,
                    onReset: delegate.onResetPinCode,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

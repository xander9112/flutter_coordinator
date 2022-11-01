import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../src.dart';
import 'widgets/_widgets.dart';

abstract class PinCodePageDelegate {
  PinCodeBloc get pinCodeBloc;
  void onPinCodeEnter(String pinCode);
  void onDeleteNumber();
  void onResetPinCode();
  void onResumed();
}

class PinCodeEnterPage extends StatefulWidget {
  const PinCodeEnterPage({required this.delegate, super.key});

  final PinCodePageDelegate delegate;

  @override
  State<PinCodeEnterPage> createState() => _PinCodeEnterPageState();
}

class _PinCodeEnterPageState extends State<PinCodeEnterPage>
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: PinCodeHeader(
                          hasPinCode: true,
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
                          // avatar: profileState.profile?.avatar,
                          // name: profileState.profile?.login,
                        ),
                      ),
                      // Opacity(
                      //   opacity: authState.maybeMap(
                      //     unVerified: (AuthStateUnVerified value) {
                      //       return value.status.isFetchingInProgress;
                      //     },
                      //     orElse: () => false,
                      //   )
                      //       ? 1
                      //       : 0,
                      //   child: const NeoLoader(),
                      // ),
                    ],
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

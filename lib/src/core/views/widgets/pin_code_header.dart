import 'package:flutter/material.dart';

import '_widgets.dart';

class PinCodeHeader extends StatelessWidget {
  const PinCodeHeader({
    required this.hasPinCode,
    required this.hasTemporaryCode,
    required this.hasError,
    required this.pinCodeLength,
    required this.pinFilledCodeLength,
    required this.isLoading,
    this.isChanging = false,
    this.error,
    Key? key,
    this.avatar,
    this.name,
  }) : super(key: key);

  final int pinCodeLength;
  final int pinFilledCodeLength;

  final bool isChanging;
  final bool hasPinCode;
  final bool hasTemporaryCode;
  final bool hasError;
  final bool isLoading;
  final String? error;
  final String? avatar;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        children: <Widget>[
          const Spacer(),
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: PinCodeTitle(
                    hasPinCode: hasPinCode,
                    hasTemporaryCode: hasTemporaryCode,
                  ),
                ),
              ],
            ),
          ),
          PinCodePoints(
            hasError: hasError,
            pinCodeLength: pinCodeLength,
            pinFilledCodeLength: pinFilledCodeLength,
            isLoading: isLoading,
          ),
          const SizedBox(height: 64.0),
          Opacity(
            opacity: hasError ? 1 : 0,
            child: Text(
              error ?? '',
              style: TextStyle(color: Theme.of(context).errorColor),
            ),
          ),
        ],
      ),
    );
  }
}

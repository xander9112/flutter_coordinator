import 'package:flutter/material.dart';

class PinCodeTitle extends StatelessWidget {
  const PinCodeTitle({
    required this.hasPinCode,
    required this.hasTemporaryCode,
    Key? key,
  }) : super(key: key);

  final bool hasPinCode;
  final bool hasTemporaryCode;

  String get enterPinCode {
    return 'EnterPinCode';
  }

  String get repeatPinCode {
    return 'RepeatPinCode';
  }

  String get setPinCode {
    return 'SetPinCode';
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle? style = Theme.of(context).textTheme.subtitle1;

    if (hasPinCode) {
      return Text(enterPinCode, style: style);
    }

    if (hasTemporaryCode) {
      return Text(repeatPinCode, style: style);
    }

    return Text(setPinCode, style: style);
  }
}

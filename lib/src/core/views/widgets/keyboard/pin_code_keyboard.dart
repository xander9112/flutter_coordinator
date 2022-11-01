import 'package:flutter/material.dart';

import 'keyboard.dart';

class PinCodeKeyboard extends StatelessWidget {
  const PinCodeKeyboard({
    Key? key,
    this.onPressedNumber,
    this.onReset,
    this.onDelete,
    this.icon,
    this.reset,
  }) : super(key: key);

  final Function(String text)? onPressedNumber;
  final VoidCallback? onReset;
  final VoidCallback? onDelete;
  final String? icon;
  final String? reset;

  _onPressedNumber(String value) =>
      onPressedNumber != null ? () => onPressedNumber!(value) : null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              KeyItem(
                onPressedNumber: _onPressedNumber('1'),
                child: const KeyItemNumber(text: '1'),
              ),
              KeyItem(
                onPressedNumber: _onPressedNumber('2'),
                child: const KeyItemNumber(text: '2'),
              ),
              KeyItem(
                onPressedNumber: _onPressedNumber('3'),
                child: const KeyItemNumber(text: '3'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              KeyItem(
                onPressedNumber: _onPressedNumber('4'),
                child: const KeyItemNumber(text: '4'),
              ),
              KeyItem(
                onPressedNumber: _onPressedNumber('5'),
                child: const KeyItemNumber(text: '5'),
              ),
              KeyItem(
                onPressedNumber: _onPressedNumber('6'),
                child: const KeyItemNumber(text: '6'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              KeyItem(
                onPressedNumber: _onPressedNumber('7'),
                child: const KeyItemNumber(
                  text: '7',
                ),
              ),
              KeyItem(
                onPressedNumber: _onPressedNumber('8'),
                child: const KeyItemNumber(
                  text: '8',
                ),
              ),
              KeyItem(
                onPressedNumber: _onPressedNumber('9'),
                child: const KeyItemNumber(
                  text: '9',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              KeyItem(
                onPressedNumber: onReset?.call,
                child: Text(
                  reset ?? 'reset',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              KeyItem(
                onPressedNumber: _onPressedNumber('0'),
                child: const KeyItemNumber(text: '0'),
              ),
              KeyItem(
                onPressedNumber: onDelete,
                child: Text(
                  'delete',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

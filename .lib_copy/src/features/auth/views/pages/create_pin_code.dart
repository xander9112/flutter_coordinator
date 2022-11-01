import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../auth.dart';

class CreatePinCodePage extends StatefulWidget {
  const CreatePinCodePage({
    Key? key,
    this.onPinCodeEnter,
  }) : super(key: key);

  final Function(String pinCode)? onPinCodeEnter;

  @override
  State<CreatePinCodePage> createState() => _CreatePinCodePageState();
}

class _CreatePinCodePageState extends State<CreatePinCodePage> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();

    _controller.addListener(_listener);

    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_listener);

    super.dispose();
  }

  void _listener() {
    _onPinCodeEnter();
  }

  void _onPinCodeEnter() {
    widget.onPinCodeEnter?.call(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<PinCodeBloc, PinCodeState>(
        bloc: GetIt.I(),
        listener: (BuildContext context, PinCodeState state) {
          setState(() {
            _controller.text = '';
          });
        },
        builder: (BuildContext context, PinCodeState state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                state.maybeMap(
                  orElse: () => const SizedBox(),
                  error: (_) => Text(
                    _.error,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: Theme.of(context).errorColor,
                        ),
                  ),
                  initial: (_) => const Text('Придумайте PinCode'),
                  repeat: (_) => const Text('Повторите PinCode'),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      labelText: 'PinCode',
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

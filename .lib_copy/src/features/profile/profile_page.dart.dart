import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../features.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
    this.onPressedLogout,
    this.onChangeUsePinCode,
  }) : super(key: key);

  final VoidCallback? onPressedLogout;
  final Function(bool value)? onChangeUsePinCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.pin),
            title: const Text('Использовать PinCode'),
            trailing: BlocBuilder<PinCodeBloc, PinCodeState>(
              bloc: GetIt.I(),
              builder: (BuildContext context, PinCodeState state) {
                return state.maybeMap(
                  orElse: () => const SizedBox(),
                  initial: (_) {
                    return Switch.adaptive(
                      value: _.usePinCode,
                      onChanged: onChangeUsePinCode,
                    );
                  },
                  success: (_) {
                    return Switch.adaptive(
                      value: _.usePinCode,
                      onChanged: onChangeUsePinCode,
                    );
                  },
                );
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: onPressedLogout,
          ),
        ],
      ),
    );
  }
}

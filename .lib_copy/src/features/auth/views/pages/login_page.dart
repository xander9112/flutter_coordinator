import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../auth.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({this.onSubmit, Key? key}) : super(key: key);

  final LoginOnSubmit? onSubmit;

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late TextEditingController _loginController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _loginController = TextEditingController(text: 'user');
    _passwordController = TextEditingController(text: '123');
  }

  void _onSubmit() {
    widget.onSubmit?.call(_loginController.text, _passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<LoginBloc, LoginState>(
            bloc: GetIt.I(),
            builder: (BuildContext context, LoginState state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Auth Page'),
                  TextField(
                    controller: _loginController,
                    decoration: const InputDecoration(
                      labelText: 'Login',
                    ),
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
                    child: ElevatedButton(
                      onPressed: _onSubmit,
                      child: const Text('LogIn'),
                    ),
                  ),
                  SizedBox(
                    height: 56.0,
                    child: state.maybeMap(
                      orElse: () => const SizedBox(),
                      loading: (_) =>
                          const CircularProgressIndicator.adaptive(),
                      error: (_) => Text(
                        _.error,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: Theme.of(context).errorColor),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

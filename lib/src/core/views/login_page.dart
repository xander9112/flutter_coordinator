import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../src.dart';

abstract class LoginPageDelegate {
  FormGroup get form;
  LoginBloc get loginBloc;

  void onSubmit(String login, String password);
  void onPressedEmail();
}

class LoginPage extends StatelessWidget {
  const LoginPage({required this.delegate, super.key});

  final LoginPageDelegate delegate;

  void onSubmitForm() {
    delegate.form.markAllAsTouched();

    if (delegate.form.valid) {
      delegate.onSubmit.call(
        delegate.form.value['login'].toString(),
        delegate.form.value['password'].toString(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: ScrollBody(
          child: IntrinsicHeight(
            child: ReactiveForm(
              formGroup: delegate.form,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            'Auth',
                            style: Theme.of(context).textTheme.headline5,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        ReactiveTextField<String>(
                          formControlName: 'login',
                          decoration: const InputDecoration(
                            labelText: 'Login',
                          ),
                        ),
                        ReactiveTextField<String>(
                          formControlName: 'password',
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                          ),
                        ),
                        const SizedBox(height: 32.0),
                        BlocBuilder<LoginBloc, LoginState>(
                          bloc: delegate.loginBloc,
                          builder: (BuildContext context, LoginState state) {
                            return Column(
                              children: <Widget>[
                                ElevatedButton(
                                  onPressed: state.maybeMap(
                                    orElse: () => onSubmitForm,
                                    loading: (_) => null,
                                  ),
                                  child: const Text('Sign in'),
                                ),
                                state.maybeMap(
                                  orElse: () => const SizedBox(),
                                  loading: (_) =>
                                      const CircularProgressIndicator
                                          .adaptive(),
                                  error: (_) {
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 32.0),
                                      child: Text(
                                        _.error,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(
                                              color:
                                                  Theme.of(context).errorColor,
                                            ),
                                      ),
                                    );
                                  },
                                )
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

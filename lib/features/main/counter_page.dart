import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flow/features/main/counter/counter_cubit.dart';
import 'package:get_it/get_it.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key, this.onPressedCounter}) : super(key: key);

  final VoidCallback? onPressedCounter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('CounterPage'),
            BlocBuilder<CounterCubit, CounterState>(
              bloc: GetIt.I<CounterCubit>(),
              builder: (BuildContext context, CounterState state) {
                return Column(
                  children: <Widget>[
                    Text(state.type.name),
                    Text(state.counter.toString()),
                  ],
                );
              },
            ),
            ElevatedButton(
              onPressed: onPressedCounter,
              child: const Text('Counter +'),
            ),
          ],
        ),
      ),
    );
  }
}

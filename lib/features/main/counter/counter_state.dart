part of 'counter_cubit.dart';

enum CounterType { keep, reset }

@freezed
class CounterState with _$CounterState {
  const factory CounterState.initial({
    @Default(0) int counter,
    @Default(CounterType.keep) CounterType type,
  }) = _Initial;

  factory CounterState.fromJson(Object? json) =>
      _$CounterStateFromJson(json! as Map<String, dynamic>);

  const CounterState._();

  @override
  Map<String, dynamic> toJson();
}

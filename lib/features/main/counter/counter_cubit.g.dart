// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Initial _$$_InitialFromJson(Map<String, dynamic> json) => _$_Initial(
      counter: json['counter'] as int? ?? 0,
      type: $enumDecodeNullable(_$CounterTypeEnumMap, json['type']) ??
          CounterType.keep,
    );

Map<String, dynamic> _$$_InitialToJson(_$_Initial instance) =>
    <String, dynamic>{
      'counter': instance.counter,
      'type': _$CounterTypeEnumMap[instance.type]!,
    };

const _$CounterTypeEnumMap = {
  CounterType.keep: 'keep',
  CounterType.reset: 'reset',
};

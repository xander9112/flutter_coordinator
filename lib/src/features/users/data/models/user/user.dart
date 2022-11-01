// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String email,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'first_name') required String firstName,
  }) = _UserModel;

  factory UserModel.fromJson(Object? json) =>
      _$UserModelFromJson(json! as Map<String, dynamic>);

  const UserModel._();

  @override
  Map<String, dynamic> toJson();

  String get fullName => '$lastName $firstName';

  String get shortName {
    String shortName = '$lastName ${firstName[0]}.';

    return shortName;
  }
}

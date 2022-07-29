// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

final StateProvider<User?> userState = StateProvider((ref) => null);

/*
*HIVE PART
*/
const String userBoxName = "userData";
Box<UserHive>? userBox;

@HiveType(typeId: 0)
class UserHive {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? username;
  @HiveField(2)
  String? email;
  @HiveField(3)
  String? phone;
  @HiveField(4)
  String? workPhone;
  @HiveField(5)
  String? firstName;
  @HiveField(6)
  String? lastName;
  @HiveField(7)
  String? middleName;
  @HiveField(8)
  String? avatar;
  @HiveField(9)
  int? sex;
  @HiveField(10)
  UserExtended? extendedInfo;

  UserHive(
      this.id,
      this.username,
      this.email,
      this.phone,
      this.workPhone,
      this.firstName,
      this.lastName,
      this.middleName,
      this.avatar,
      this.sex,
      this.extendedInfo);
}

/*
*FREEZE PART
*/
User? user;

@freezed
class User with _$User {
  const factory User({
    @Default(-1) int? id,
    @Default('') String? username,
    @Default('') String? email,
    @Default('') String? phone,
    @JsonKey(name: 'work_phone') @Default('') String? workPhone,
    @JsonKey(name: 'first_name') @Default('') String? firstName,
    @JsonKey(name: 'last_name') @Default('') String? lastName,
    @JsonKey(name: 'middle_name') @Default('') String? middleName,
    @Default('') String? avatar,
    @Default(0) int? sex,
    @Default(UserExtended(addressDelivery: [], payCard: []))
        UserExtended? extendedInfo,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class UserExtended with _$UserExtended {
  const factory UserExtended({
    @Default([]) List<String?>? addressDelivery,
    @Default([]) List<String?>? payCard,
  }) = _UserExtended;

  factory UserExtended.fromJson(Map<String, dynamic> json) =>
      _$UserExtendedFromJson(json);
}

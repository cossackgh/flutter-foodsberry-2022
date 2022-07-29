// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

final StateProvider<bool?> authState = StateProvider((ref) => false);
final StateProvider<int?> authSteps = StateProvider((ref) => 0);

/*
*HIVE PART
*/
const String tokenBoxName = "token";
Box<AuthHive>? tokenBox;

@HiveType(typeId: 1)
class AuthHive {
  @HiveField(0)
  String? token;
  @HiveField(1)
  String? error = '';

  AuthHive(this.token, this.error);
}

var auth;
/*
*FREEZE PART
*/

@freezed
class Auth with _$Auth {
  const factory Auth({
    @Default('') String? email,
    @Default('') String? password,
  }) = _Auth;

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}

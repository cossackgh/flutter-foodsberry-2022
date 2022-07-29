import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/main.dart';
import 'package:foodsberrymobile/store/global/api.dart';
import 'package:foodsberrymobile/store/global/auth/auth.dart';
import 'package:foodsberrymobile/store/global/user/user.dart';
import 'package:foodsberrymobile/transport/api/utils.dart';
import 'package:hive/hive.dart';

//final StateProvider<User?> userState = StateProvider((ref) => null);

/*
* Получаем информацию о пользователе
*/

Future<User?> getUser() async {
  final String url = CoreUrl + CommonPath + gApi.user;

//  tokenBox = Hive.box<AuthHive>(tokenBoxName);
  AuthHive? currentToken = tokenBox!.get('keyToken');
  if (kDebugMode) {
    print('DIO URL => $url');
    print('DIO URL => "token ${currentToken?.token}"');
    print('User logged out => ${tokenBox!.containsKey(tokenBoxName)}');
  }

  if (currentToken != null) {
    Options options = Options(headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'token ' + currentToken.token!
    });

    try {
      // a POST request
      final Response response = await dio.get(
        url,
        options: options,
      );
      Map responseData = response.data;

      User userData = User(
        id: responseData['id'],
        username: responseData['username'],
        email: responseData['email'],
        phone: responseData['phone'],
        workPhone: responseData['work_phone'],
        firstName: responseData['first_name'],
        middleName: responseData['middle_name'],
        lastName: responseData['last_name'],
        avatar: responseData['avatar'],
        sex: responseData['sex'],
      );

      if (kDebugMode) {
        print(' (-^-) userData = > $userData');
      }

      return userData;
    } on DioError catch (e) {
      if (kDebugMode) {
        print('getUser  ERROR => $e');
      }
      throw Exception(e);
    }
  } else {
    if (kDebugMode) {
      print('user not login');
    }

    const MyHomePage().showPopUp();

    return null;

/*     return const User(
      id: null,
      avatar: null,
      sex: null,
      username: null,
      email: null,
      phone: null,
      workPhone: null,
      firstName: null,
      lastName: null,
      middleName: null,
    ); */
  }
}

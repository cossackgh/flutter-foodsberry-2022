import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/api.dart';
import 'package:foodsberrymobile/store/global/auth/auth.dart';
import 'package:foodsberrymobile/store/global/user/user.dart';
import 'package:foodsberrymobile/transport/api/utils.dart';

/*
* Получаем запрос авторизации
*/

//AuthHive? currentToken;

Future<AuthHive> loginFSPhone(String? phoneAuth) async {
  final String url = CoreUrl + CommonPath + gApi.login;

/*   emailAuth = 'cossack_box@mail.ru';
  passwordAuth = 'Qwerty12345'; */

  auth = jsonDecode('{"phone":"' + phoneAuth! + '"}');

  if (kDebugMode) {
    print('Data => ' + auth.toString());
    print('DIO URL => $url');
  }

  try {
    // a POST request
    final Response response = await dio.post(
      url,
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      }),
      data: auth,
    );

    Map responseData = response.data;

    AuthHive tokenData = AuthHive(responseData['key'], '');

    tokenBox!.put('keyToken', tokenData);
    if (kDebugMode) {
      print(' tokenData = > $tokenData}');
      print('tokenBox =>' + tokenBox.toString());
    }
    return tokenData;
  } on DioError catch (e) {
    throw Exception(e);
  }
}

Future<AuthHive> loginFS(
    [String? emailAuth,
    String? passwordAuth,
    String? phoneAuth = "",
    String? codeAuth = ""]) async {
  final String url = CoreUrl + CommonPath + gApi.login;

/*   emailAuth = 'cossack_box@mail.ru';
  passwordAuth = 'Qwerty12345'; */

/* var  dataData = jsonDecode(
      '{"email":"' + emailAuth! + '","password":"' + passwordAuth! + '"}'); */
  var dataData = jsonDecode(
      '{"phone":"' + phoneAuth! + '","auth_code":"' + codeAuth! + '"}');

  if (kDebugMode) {
    print('Data => ' + dataData.toString());
    print('DIO URL => $url');
  }

  try {
    // a POST request
    final Response response = await dio.post(
      url,
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      }),
      data: dataData,
    );

    Map responseData = response.data;

    AuthHive tokenData = AuthHive(responseData['key'], '');

    tokenBox!.put('keyToken', tokenData);
    if (kDebugMode) {
      print(' tokenData = > ${tokenData.token}');
      print('tokenBox =>' + tokenBox.toString());
    }
    return tokenData;
  } on DioError catch (e) {
    final dynamic dataError;
    if (kDebugMode) {
      dataError = e.response!.data;
      String msg = jsonEncode(dataError['error'].toString());
      print('ERROR loggin => $msg');
      return AuthHive('', msg);
      //print('User logged out');
    }
    throw Exception(e);
  }
}

void logoutFS() async {
  if (tokenBox!.isNotEmpty) {
    tokenBox?.deleteAt(0);
    user = null;
  }

  if (kDebugMode) {
    print('User logged out => ${tokenBox!.containsKey(tokenBoxName)}');
    // print('User logged out => $tokenBox');
    print('User logged out');
  }
}

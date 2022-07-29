import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:foodsberrymobile/store/global/api.dart';
import 'package:foodsberrymobile/store/global/auth/auth.dart';
import 'package:foodsberrymobile/store/global/cart/cart.dart';
import 'package:foodsberrymobile/store/global/user/user.dart';
import 'package:foodsberrymobile/transport/api/utils.dart';
import 'package:foodsberrymobile/utils/chek_login.dart';
import 'package:foodsberrymobile/views/widgets/popups.dart';
import 'package:hive/hive.dart';

/*
* Получаем информацию о Корзине
*/

Future<Cart?> getCart() async {
  final String url = CoreUrl + CommonPath + gApi.cart;

//  tokenBox = Hive.box<AuthHive>(tokenBoxName);

  if (isLogin()) {
    AuthHive? currentToken = tokenBox!.get('keyToken');
    if (kDebugMode) {
      print('DIO URL => $url');
      print('DIO URL => "token ${currentToken?.token}"');
      print('User logged out => ${tokenBox!.containsKey(tokenBoxName)}');
    }
    Options options = Options(headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'token ' + currentToken!.token!
    });

    try {
      // a POST request
      final Response response = await dio.get(
        url,
        options: options,
      );
//      Map responseData = response.data;

      final Cart cartGet = cartFromJson(json.encode(response.data));
      if (kDebugMode) {
        print(' (-^-) responseData = > $cartGet');
      }

      return cartGet;
    } on DioError catch (e) {
      if (kDebugMode) {
        print('getUser  ERROR => $e');
      }
      return Cart(errorDio: ErrorDio(isError: true, errorMessage: e.message));
      //throw Exception(e);
    }
  } else {
    Options options = Options(headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
    });

    try {
      // a POST request
      final Response response = await dio.get(
        url,
        options: options,
      );

      final Cart cartGetAnonim = cartFromJson(json.encode(response.data));
      if (kDebugMode) {
        print(' (-^-) responseData = > $cartGetAnonim');
      }

      return cartGetAnonim;
    } on DioError catch (e) {
      if (kDebugMode) {
        print('getUser  ERROR => $e');
      }

      return null;

      //throw Exception(e);
    }
  }
}
/*
* Добавляем товар в Корзину
*/

Future<AddToCartRecive?> addToCart(int? id, int? count) async {
  final String url = CoreUrl + CommonPath + gApi.addToCart;

//  tokenBox = Hive.box<AuthHive>(tokenBoxName);
  var _jsonData = {"id": id, "count": count};
  if (isLogin()) {
    AuthHive? currentToken = tokenBox!.get('keyToken');
    if (kDebugMode) {
      print('DIO URL => $url');
      print('DIO URL => "token ${currentToken?.token}"');
      print('User logged out => ${tokenBox!.containsKey(tokenBoxName)}');
    }
    Options options = Options(headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'token ' + currentToken!.token!
    });

    try {
      // a POST request
      final Response response =
          await dio.post(url, options: options, data: jsonEncode(_jsonData));
      final responseData = response.data;

      final AddToCartRecive addToCartRecive =
          AddToCartRecive.fromJson(responseData);
      if (kDebugMode) {
        print(' (-^-) addToCartRecive = > $addToCartRecive');
      }

      return addToCartRecive;
    } on DioError catch (e) {
      if (kDebugMode) {
        print('getUser  ERROR => $e');
      }
      throw Exception(e);
    }
  } else {
    Options options = Options(headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
    });

    try {
      // a POST request
      final Response response =
          await dio.post(url, options: options, data: jsonEncode(_jsonData));

      final responseData = response.data;

      final AddToCartRecive addToCartRecive =
          AddToCartRecive.fromJson(responseData);
      if (kDebugMode) {
        print(' (-^-) addToCartRecive = > $addToCartRecive');
      }
      return addToCartRecive;
    } on DioError catch (e) {
      if (kDebugMode) {
        print('getUser  ERROR => $e');
      }
      throw Exception(e);
    }
  }
}

/*
* Удаляем товар из Корзины
*/

Future<bool?> deleteItemFromCart(int? id) async {
  final String url = CoreUrl + CommonPath + gApi.updateCartItem + id.toString();

//  tokenBox = Hive.box<AuthHive>(tokenBoxName);
  var _jsonData = {"id": id};
  if (isLogin()) {
    AuthHive? currentToken = tokenBox!.get('keyToken');
    if (kDebugMode) {
      print('DIO URL => $url');
      print('DIO URL => "token ${currentToken?.token}"');
      print('User logged out => ${tokenBox!.containsKey(tokenBoxName)}');
    }
    Options options = Options(headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'token ' + currentToken!.token!
    });

    try {
      // a POST request
      final Response response =
          await dio.delete(url, options: options, data: jsonEncode(_jsonData));
      final responseData = response.data;
      if (kDebugMode) {
        print(' (-^-) deleteItemFromCartRecive = > $responseData');
      }
      /* final AddToCartRecive addToCartRecive =
          AddToCartRecive.fromJson(responseData);
      if (kDebugMode) {
        print(' (-^-) addToCartRecive = > $addToCartRecive');
      } */

      return true;
    } on DioError catch (e) {
      if (kDebugMode) {
        print('getUser  ERROR => $e');
      }
      throw Exception(e);
    }
  } else {
    return false;
  }
}

/*
* Удаляем  Корзину
*/

Future<bool?> deleteCart(int? idCart) async {
  final String url = CoreUrl + CommonPath + gApi.cartClean + idCart.toString();

  if (isLogin()) {
    AuthHive? currentToken = tokenBox!.get('keyToken');
    if (kDebugMode) {
      print('DIO URL => $url');
      print('DIO URL => "token ${currentToken?.token}"');
      print('User logged out => ${tokenBox!.containsKey(tokenBoxName)}');
    }
    Options options = Options(headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'token ' + currentToken!.token!
    });

    try {
      // a POST request
      final Response response = await dio.delete(url, options: options);
      final responseData = response.data;
      if (kDebugMode) {
        print(' (-^-) deleteCart = > $responseData');
      }
      /* final AddToCartRecive addToCartRecive =
          AddToCartRecive.fromJson(responseData);
      if (kDebugMode) {
        print(' (-^-) addToCartRecive = > $addToCartRecive');
      } */

      return true;
    } on DioError catch (e) {
      if (kDebugMode) {
        print('getUser  ERROR => $e');
      }
      throw Exception(e);
    }
  } else {
    return false;
  }
}

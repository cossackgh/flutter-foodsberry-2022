import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:foodsberrymobile/store/global/api.dart';
import 'package:foodsberrymobile/store/global/auth/auth.dart';
import 'package:foodsberrymobile/store/global/products/products.dart';
import 'package:foodsberrymobile/transport/api/utils.dart';
import 'package:foodsberrymobile/utils/chek_login.dart';
import 'package:hive/hive.dart';

/*
* Получаем полный список Избранных Продуктов
*/

Future<List<Products>?> getDataFavoriteProducts() async {
  final String url = CoreUrl + CommonPath + gApi.favorite;
  if (kDebugMode) {
    print('DIO FAV URL => $url');
  }

  if (isLogin()) {
    tokenBox = Hive.box<AuthHive>(tokenBoxName);
    AuthHive? currentToken = tokenBox!.get('keyToken');
    Options options = Options(headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'token ' + currentToken!.token!
    });

    try {
      List<Products> allFavProductsLocally = [];
      // a GET request
      final response = await dio.get(
        url,
        options: options,
      );
      final results = response.data['results'];

      results.forEach((item) {
        Products itemProducts = Products.fromJson(item);
        allFavProductsLocally.add(itemProducts);
      });

      return allFavProductsLocally;
    } on DioError catch (e) {
      throw Exception(e);
    }
  } else {
    if (kDebugMode) {
      print('user not login');
    }
    return [];
  }
}

/*
* Получаем полный список Избранных Продуктов FutureBuilder
*/

Future getDataFavoriteProductsFuture() async {
  final String url = CoreUrl + CommonPath + gApi.favorite;
  if (kDebugMode) {
    print('DIO FAV URL => $url');
  }

  if (isLogin()) {
    tokenBox = Hive.box<AuthHive>(tokenBoxName);
    AuthHive? currentToken = tokenBox!.get('keyToken');
    Options options = Options(headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'token ' + currentToken!.token!
    });

    try {
      List<Products> allFavProductsLocally = [];
      // a GET request
      final response = await dio.get(
        url,
        options: options,
      );
      final results = response.data['results'];

      results.forEach((item) {
        Products itemProducts = Products.fromJson(item);
        allFavProductsLocally.add(itemProducts);
      });

      return allFavProductsLocally;
    } on DioError catch (e) {
      throw Exception(e);
    }
  } else {
    if (kDebugMode) {
      print('user not login');
    }
    return [];
  }
}

/*
* Добавляем Продукт в Избранное
*/

Future<List<Products>?> addFavoriteProducts(int productID) async {
  final String url =
      CoreUrl + CommonPath + gApi.favorite + productID.toString();
  if (kDebugMode) {
    print('DIO ADD FAV URL => $url');
  }
  if (isLogin()) {
    tokenBox = Hive.box<AuthHive>(tokenBoxName);
    AuthHive? currentToken = tokenBox!.get('keyToken');

    Options options = Options(headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'token ' + currentToken!.token!
    });

    try {
      List<Products> allFavProducts = [];
      // a POST request
      await dio.post(
        url,
        options: options,
      );

      allFavProducts = (await getDataFavoriteProducts())!;
      if (kDebugMode) {
        print('ADD API allFavoritesProducts  =>' +
            allFavoritesProducts.toString());
      }

      return allFavProducts;
    } on DioError catch (e) {
      throw Exception(e);
    }
  } else {
    if (kDebugMode) {
      print('user not login');
    }
    return [];
  }
}
/*
* Удаляем Продукт в Избранное
*/

Future<List<Products>?> deleteFavoriteProducts(int productID) async {
  final String url =
      CoreUrl + CommonPath + gApi.favorite + productID.toString();
  if (kDebugMode) {
    print('DIO ADD FAV URL => $url');
  }
  if (isLogin()) {
    tokenBox = Hive.box<AuthHive>(tokenBoxName);
    AuthHive? currentToken = tokenBox!.get('keyToken');

    Options options = Options(headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'token ' + currentToken!.token!
    });

    try {
      List<Products> allFavProductsLocally = [];
      // a POST request
      await dio.delete(
        url,
        options: options,
      );

      allFavProductsLocally = (await getDataFavoriteProducts())!;
      if (kDebugMode) {
        print('DELETE API allFavoritesProducts  =>' +
            allFavoritesProducts.toString());
      }

      return allFavProductsLocally;
    } on DioError catch (e) {
      throw Exception(e);
    }
  } else {
    if (kDebugMode) {
      print('user not login');
    }
    return [];
  }
}

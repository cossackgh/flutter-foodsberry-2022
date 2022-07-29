import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:foodsberrymobile/store/global/api.dart';
import 'package:foodsberrymobile/store/global/auth/auth.dart';
import 'package:foodsberrymobile/store/global/products/product_filter.dart';
import 'package:foodsberrymobile/store/global/products/products.dart';
import 'package:foodsberrymobile/transport/api/utils.dart';
import 'package:foodsberrymobile/utils/chek_login.dart';
import 'package:hive/hive.dart';

/*
* Получаем полный список Избранных Продуктов
*/

Future<List<Products>?> getDataFilteredProducts(FilterProducts? filter) async {
  final String url =
      CoreUrl + CommonPath + gApi.productsFiltered + filter.toString();
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

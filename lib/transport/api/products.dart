import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:foodsberrymobile/store/global/api.dart';
import 'package:foodsberrymobile/store/global/products/product_filter.dart';
import 'package:foodsberrymobile/store/global/products/products.dart';
import 'package:foodsberrymobile/transport/api/utils.dart';

/*
* Получаем полный список Продуктов
*/

Future<List<Products>?> getDataAllProducts() async {
  final String url = CoreUrl + CommonPath + gApi.products;
  if (kDebugMode) {
    print('DIO URL => $url');
  }
  try {
    List<Products> allProductsLocally = [];
    // a GET request
    final response = await dio.get(url);
    final results = response.data['results'];
    //final categoriesData = Products.fromJson(response.data);
/*     print(' NEWS newsData = > $categoriesData}');
    print(' NEWS results = > $results}'); */
    results.forEach((item) {
      Products itemProducts = Products.fromJson(item);
      allProductsLocally.add(itemProducts);
      // print(' itemProducts Name = > $itemProducts');
/*       if (itemProducts.image != '') {
        allProducts!.add(itemProducts);
      } */
    });

    return allProductsLocally;
  } on DioError catch (e) {
    throw Exception(e);
  }
}

/*
* Получаем данные одного Продукта
*/

Future<Products?> getDataSingleProduct(int? productId) async {
  final String url =
      CoreUrl + CommonPath + gApi.products + productId.toString();
  if (kDebugMode) {
    print('DIO URL => $url');
  }
  try {
    // a GET request
    final response = await dio.get(url);
    final results = response.data;

    Products itemProducts = Products.fromJson(results);

    return itemProducts;
  } on DioError catch (e) {
    switch (e.response!.statusCode) {
      case 400:
        if (kDebugMode) {
          print('Request Error = > ${e.response!.statusCode}');
          print(' Error = > $e');
        }
        break;
      default:
    }
    return null;
    //throw Exception(e);
  }
}

/*
* Получаем данные фильтра по  Продуктам
*/

Future<List<Products>?> getDataFilterProducts(FilterProducts? filter) async {
  if (kDebugMode) {
    print('queryFilter => ' + filter.toString());
  }
  final String url =
      CoreUrl + CommonPath + gApi.products + 'list?' + filter.toString();
  if (kDebugMode) {
    print('DIO URL => $url');
  }
  try {
    List<Products> allProductsLocally = [];
    // a GET request
    final response = await dio.get(url);
    final results = response.data['results'];

    results.forEach((item) {
      Products itemProducts = Products.fromJson(item);
      allProductsLocally.add(itemProducts);
    });

    return allProductsLocally;
  } on DioError catch (e) {
    throw Exception(e);
  }
}

/*
* Получаем данные Новых  Продуктов
*/

Future<List<Products>?> getDataNewProducts() async {
  final String url = CoreUrl + CommonPath + gApi.checkNewProducts;
  if (kDebugMode) {
    print('DIO URL => $url');
  }
  try {
    List<Products> allProductsLocally = [];
    // a GET request
    final response = await dio.get(url);
    final results = response.data['results'];
    //final categoriesData = Products.fromJson(response.data);
/*     print(' NEWS newsData = > $categoriesData}');
    print(' NEWS results = > $results}'); */
    results.forEach((item) {
      Products itemProducts = Products.fromJson(item);
      allProductsLocally.add(itemProducts);
      // print(' itemProducts Name = > $itemProducts');
/*       if (itemProducts.image != '') {
        allProducts!.add(itemProducts);
      } */
    });

    return allProductsLocally;
  } on DioError catch (e) {
    throw Exception(e);
  }
}

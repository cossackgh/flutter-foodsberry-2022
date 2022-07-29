import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:foodsberrymobile/store/global/api.dart';
import 'package:foodsberrymobile/store/global/promotions/promotions.dart';
import 'package:foodsberrymobile/transport/api/utils.dart';

/*
* Получаем список Акций
*/

Future<List<ResultsPromotion>?> getDataPromotions() async {
  final String url = CoreUrl + CommonPath + gApi.promotions;
  if (kDebugMode) {
    print('DIO URL getDataPromotions => $url');
  }
  try {
    allPromotions = [];
    // a GET request
    final response = await dio.get(url);
    final results = response.data;
    //  final promotionsData = Promotion.fromJson(response.data);
    if (kDebugMode) {
      //    print(' Promotion prpmotionsData = > $promotionsData}');
      print(' PROMOTIONS results = > $results}');
    }

    results.forEach((item) {
      ResultsPromotion itemPromotions = ResultsPromotion.fromJson(item);

      allPromotions!.add(itemPromotions);
    });

    return allPromotions;
  } on DioError catch (e) {
    throw Exception(e);
  }
}

/*
* Получаем данные одной Акции
*/

Future<ResultsPromotion?> getDataCurrentPromotion(int? promoID) async {
  final String url =
      CoreUrl + CommonPath + gApi.promotions + promoID!.toString();
  if (kDebugMode) {
    print('DIO URL getDataPromotions => $url');
  }
  try {
    allPromotions = [];
    // a GET request
    final response = await dio.get(url);

    final promotionsData = ResultsPromotion.fromJson(response.data);
    if (kDebugMode) {
      print(' BANNERS bannersData = > $promotionsData}');
    }

    return promotionsData;
  } on DioError catch (e) {
    throw Exception(e);
  }
}

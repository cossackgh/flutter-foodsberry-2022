import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:foodsberrymobile/store/global/api.dart';
import 'package:foodsberrymobile/store/global/banners/banners.dart';
import 'package:foodsberrymobile/transport/api/utils.dart';

/*
* Получаем список Баннеров
*/

Future<List<ResultsBanner>?> getDataBanners() async {
  final String url = CoreUrl + CommonPath + gApi.banners;
  if (kDebugMode) {
    print('DIO URL getDataBanners => $url');
  }
  try {
    allBanners = [];
    // a GET request
    final response = await dio.get(url);
    final results = response.data['results'];
    final bannersData = Banner.fromJson(response.data);
    if (kDebugMode) {
      print(' BANNERS bannersData = > $bannersData}');
      print(' BANNERS results = > $results}');
    }

    results.forEach((item) {
      ResultsBanner itemBanners = ResultsBanner.fromJson(item);

      if (itemBanners.image != '') {
        allBanners!.add(itemBanners);
      }
    });

    return allBanners;
  } on DioError catch (e) {
    throw Exception(e);
  }
}

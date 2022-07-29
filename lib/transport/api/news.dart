import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:foodsberrymobile/store/global/api.dart';
import 'package:foodsberrymobile/store/global/news/news.dart';
import 'package:foodsberrymobile/transport/api/utils.dart';

/*
* Получаем список Новостей
*/

Future<List<ResultsNews>?> getDataNews() async {
  final String url = CoreUrl + CommonPath + gApi.news;
  if (kDebugMode) {
    print('DIO URL getDataNews => $url');
  }
  try {
    allNews = [];
    // a GET request
    final response = await dio.get(url);
    final results = response.data['results'];
    final newsData = News.fromJson(response.data);
    if (kDebugMode) {
      print(' NEWS newsData = > $newsData}');
      print(' NEWS results = > $results}');
    }

    results.forEach((item) {
      ResultsNews itemNews = ResultsNews.fromJson(item);

      if (itemNews.image != '') {
        allNews!.add(itemNews);
      }
    });

    return allNews;
  } on DioError catch (e) {
    throw Exception(e);
  }
}

/*
* Получаем данные одной Новости
*/

Future<ResultsNews?> getDataSingleNews(int? newsId) async {
  final String url = CoreUrl + CommonPath + gApi.news + newsId.toString();
  if (kDebugMode) {
    print('DIO SINGLE NEWS URL => $url');
  }
  try {
    // a GET request
    final response = await dio.get(url);
    final results = response.data;

    ResultsNews itemNews = ResultsNews.fromJson(results);

    return itemNews;
  } on DioError catch (e) {
    throw Exception(e);
  }
}

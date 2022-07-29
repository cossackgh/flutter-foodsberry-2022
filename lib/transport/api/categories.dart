import 'package:dio/dio.dart';
import 'package:foodsberrymobile/store/global/api.dart';
import 'package:foodsberrymobile/store/global/categories/categories.dart';
import 'package:foodsberrymobile/transport/api/utils.dart';

/*
* Получаем список Категорий
*/

Future<List<ResultsCategories>?> getDataCategories() async {
  final String url = CoreUrl + CommonPath + gApi.categories;
  print('DIO URL => $url');
  try {
    allCategories = [];
    // a GET request
    final response = await dio.get(url);
    final results = response.data;
    //final categoriesData = Categories.fromJson(response.data);
/*     print(' NEWS newsData = > $categoriesData}');
    print(' NEWS results = > $results}'); */
    results.forEach((item) {
      ResultsCategories itemCategories = ResultsCategories.fromJson(item);
      allCategories!.add(itemCategories);
      // print(' itemCategories Name = > $itemCategories');
/*       if (itemCategories.image != '') {
        allCategories!.add(itemCategories);
      } */
    });

    return allCategories;
  } on DioError catch (e) {
    throw Exception(e);
  }
}

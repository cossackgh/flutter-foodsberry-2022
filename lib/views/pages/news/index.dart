import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/auth/auth.dart';
import 'package:foodsberrymobile/store/global/news/news.dart';
import 'package:foodsberrymobile/views/pages/news/widgets/card-news.dart';

class NewsPage extends ConsumerWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isL = ref.watch(authState.state).state;
    final newsData = ref.watch(listNewsState.state).state;
    //Products?  selectProduct = (await getDataSingleProduct(1001619)) ;
    return Scaffold(
      appBar: AppBar(
/*           leading: IconButton(
            icon: const Icon(Icons.chevron_left, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ), */
        foregroundColor: Colors.black54,
        actions: [
          IconButton(
            color: Colors.black54,
            icon: const Icon(Icons.search),
            tooltip: 'Поиск',
            onPressed: () {
              // handle the press
            },
          ),
        ],
        elevation: 4,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('НОВОСТИ'),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 0.52,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: newsData == null ? 0 : newsData.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  child: CardNews(
                      dataCardNews: newsData?[index], isFavoritesPage: true),
                );
              })),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodsberrymobile/store/global/news/news.dart';

class SingleNewsPage extends StatelessWidget {
  const SingleNewsPage({Key? key, this.dataCardNews}) : super(key: key);
  final ResultsNews? dataCardNews;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
          title: Text(dataCardNews!.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ALL NEWS PAGE ${dataCardNews!.title}'),
            ],
          ),
        ));
  }
}

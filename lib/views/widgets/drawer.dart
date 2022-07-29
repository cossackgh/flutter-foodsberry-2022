import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/news/news.dart';
import 'package:foodsberrymobile/store/global/theme.dart';
import 'package:foodsberrymobile/transport/api/news.dart';
import 'package:foodsberrymobile/views/pages/news/index.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class DrawerMenu extends ConsumerWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(builder: (context, ref, _) {
      return Container(
        key: const Key('drawerKey'),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 22, horizontal: 8),
                child: Text(
                  'МЕНЮ',
                  style: CustomTextStyle.drawerTitle,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Акции',
                      style: CustomTextStyle.drawerItemsTitle,
                    )),
              ),
              TextButton(
                onPressed: () async {
                  ref.read(listNewsState.state).state = (await getDataNews())!;
                  Navigator.pop(context);
                  pushNewScreen(
                    context,
                    screen: const NewsPage(),
                    withNavBar: true, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation:
                        PageTransitionAnimation.slideRight, // OPTIONAL
                  );
                },
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Новости',
                      style: CustomTextStyle.drawerItemsTitle,
                    )),
              ),
              TextButton(
                onPressed: () {},
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Общая информация',
                      style: CustomTextStyle.drawerItemsTitle,
                    )),
              ),
            ],
          ),
        ),
      );
    });
  }
}

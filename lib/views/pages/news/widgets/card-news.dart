import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/news/news.dart';
import 'package:foodsberrymobile/store/global/theme.dart';
import 'package:foodsberrymobile/views/pages/news/single-news.dart';
import 'package:intl/intl.dart';

import 'package:group_button/group_button.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CardNews extends StatelessWidget {
  const CardNews({Key? key, this.dataCardNews, this.isFavoritesPage = false})
      : super(key: key);

  final ResultsNews? dataCardNews;
  final bool? isFavoritesPage;

  @override
  Widget build(BuildContext context) {
/*     final StateProvider<String?> localPriceState =
        StateProvider((ref) => dataCardNews!.sku![0].basePrice!.toString());
    final StateProvider<int?> localSKUIndexState = StateProvider((ref) => 0); */
    final controllerGrpButton = GroupButtonController();
    controllerGrpButton.selectIndex(0);

    return Card(
        elevation: 4,
        child: Consumer(
          builder: (context, ref, _) {
            /*    final localPriceData = ref.watch(localPriceState.state).state;
            final localSKUIndexData = ref.watch(localSKUIndexState.state).state;
 */
            return Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      //mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: LayoutBuilder(builder: (_, constraints) {
                                return CachedNetworkImage(
                                  imageUrl: dataCardNews!.image,
                                  fit: BoxFit.cover,
                                  width: constraints.maxWidth - 4,
                                  height: constraints.maxWidth / 2,
                                  placeholder: (context, url) => const Center(
                                    child: SizedBox(
                                        width: 30,
                                        height: 30,
                                        child: CircularProgressIndicator()),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Image.asset(
                                          'assets/images/empty-image.jpg',
                                          fit: BoxFit.cover),
                                );
                              })),
                          onTap: () => pushNewScreen(
                            context,
                            screen: SingleNewsPage(dataCardNews: dataCardNews!),
                            withNavBar:
                                true, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation:
                                PageTransitionAnimation.slideRight, // OPTIONAL
                          ),

                          /* {
                        GoRouter.of(context).go(
                            '/product/' + dataCardProduct!.id.toString());
                      }, */
                        ),
                      ],
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text(
                              DateFormat('yyyy-MM-dd').format(
                                  DateTime.parse(dataCardNews!.activeFrom)),
                              style: CustomTextStyle.dateNewsCard),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 4.0),
                          child: Text(dataCardNews!.title,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: CustomTextStyle.cardProductTitle),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 4.0),
                          child: Text(dataCardNews!.body,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 6,
                              style: Theme.of(context).textTheme.subtitle1),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 4.0),
                          child: ElevatedButton(
                              onPressed: () {
                                pushNewScreen(
                                  context,
                                  screen: SingleNewsPage(
                                      dataCardNews: dataCardNews!),
                                  withNavBar:
                                      true, // OPTIONAL VALUE. True by default.
                                  pageTransitionAnimation:
                                      PageTransitionAnimation
                                          .slideRight, // OPTIONAL
                                );
                              },
                              child: const Text('читать',
                                  style: CustomTextStyle.cardProductPrice)),
                        ),
                      ],
                    )),
                  ],
                ),
/*                 Positioned(
                    top: 15,
                    right: 12,
                    child: TextButton(
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(40, 40)),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white60),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                        ),
                        onPressed: () async {
                          print('SWITCH FAVORITE $dataCardNews');
                        },
                        child: Row(
                          verticalDirection: VerticalDirection.up,
                          children: const [
                            Icon(
                              CupertinoIcons.heart_fill,
                              size: 20,
                              color: Colors.pink,
                            ),
                          ],
                        ))), */
              ],
            );
          },
        ));
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/banners/banners.dart';
import 'package:foodsberrymobile/store/global/favorites/favorites.dart';
import 'package:foodsberrymobile/store/global/news/news.dart';
import 'package:foodsberrymobile/store/global/products/product_filter.dart';
import 'package:foodsberrymobile/store/global/products/products.dart';
import 'package:foodsberrymobile/store/global/user/user.dart';
import 'package:foodsberrymobile/transport/api/news.dart';
import 'package:foodsberrymobile/views/pages/home/widgets/image-button.dart';
import 'package:foodsberrymobile/views/pages/home/widgets/title-block.dart';
import 'package:foodsberrymobile/views/pages/news/index.dart';
import 'package:foodsberrymobile/views/pages/product/widgets/card-product.dart';
import 'package:foodsberrymobile/views/widgets/carousel-slider.dart';
import 'package:foodsberrymobile/views/widgets/drawer.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

final StateProvider<User?> userState = StateProvider((ref) => null);

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(builder: (context, ref, _) {
      final favoritesData = ref.watch(listFavoritesState.state).state;
      final popularData = ref.watch(listFilterPopular.state).state;
      final likeData = ref.watch(listFilterLike.state).state;
      final saleData = ref.watch(listFilterSale.state).state;
      final lookData = ref.watch(listFilterLook.state).state;
      final bannersData = ref.watch(listBannersState.state).state;
      final newsData = ref.watch(listNewsState.state).state;
      //final userData = ref.watch(userState.state).state;
      print('likeData = $likeData');
      return Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.black54,
            actions: [
              IconButton(
                color: Colors.black54,
                icon: const Icon(Icons.search),
                tooltip: 'Open shopping cart',
                onPressed: () {
                  // handle the press
                },
              ),
            ],
            elevation: 4,
            backgroundColor: Colors.white,
            title: Center(
              child: FractionallySizedBox(
                  alignment: Alignment.topCenter,
                  widthFactor: 0.6, // between 0 and 1
                  //heightFactor: 0.05,
                  child: Image.asset('assets/images/foodsberry-logo.png',
                      fit: BoxFit.fitHeight)),
            ),
          ),
          drawer: const Drawer(
            child: DrawerMenu(),
          ),
          body: SingleChildScrollView(
            child: bannersData != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 8)),
                      bannersData.isNotEmpty
                          ? ConstrainedBox(
                              constraints: const BoxConstraints(
                                  minWidth: double.infinity, maxHeight: 400),
                              child: FSCarouselSliderAdvert(
                                listItem: bannersData,
                                aspectRatio: 2.4,
                              ),
                            )
                          : Container(),
                      favoritesData!.isNotEmpty
                          ? const TitleBlock(
                              title: 'Избранное',
                              indexTab: 3,
                            )
                          : Container(),
                      favoritesData.isNotEmpty
                          ? ConstrainedBox(
                              constraints: const BoxConstraints(
                                  minWidth: double.infinity, maxHeight: 380),
                              child: FSCarouselSliderFavorites(
                                listItem: favoritesData,
                                aspectRatio: 0.5,
                              ),
                            )
                          : Container(),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: GestureDetector(
                                      child: const ImageButton(
                                        imageBGUrl:
                                            "assets/bg/buttons/Main_pay_delivery.jpg",
                                        width: 120,
                                        height: 120,
                                      ),
                                      onTap: () async {
                                        // allNews = (await getDataNews())!;
                                        pushNewScreen(
                                          context,
                                          screen: const NewsPage(),
                                          withNavBar:
                                              true, // OPTIONAL VALUE. True by default.
                                          pageTransitionAnimation:
                                              PageTransitionAnimation
                                                  .slideRight, // OPTIONAL
                                        );
                                      }),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: GestureDetector(
                                      child: const ImageButton(
                                        imageBGUrl:
                                            "assets/bg/buttons/Main_news.jpg",
                                        width: 120,
                                        height: 120,
                                      ),
                                      onTap: () async {
                                        // allNews = (await getDataNews())!;
                                        ref.read(listNewsState.state).state =
                                            (await getDataNews())!;
                                        pushNewScreen(
                                          context,
                                          screen: const NewsPage(),
                                          withNavBar:
                                              true, // OPTIONAL VALUE. True by default.
                                          pageTransitionAnimation:
                                              PageTransitionAnimation
                                                  .slideRight, // OPTIONAL
                                        );
                                      }),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: GestureDetector(
                                      child: const ImageButton(
                                          imageBGUrl:
                                              "assets/bg/buttons/Main_catalog.jpg",
                                          width: 120,
                                          height: 30)),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: GestureDetector(
                                      child: const ImageButton(
                                          imageBGUrl:
                                              "assets/bg/buttons/Main_business.jpg",
                                          width: 120,
                                          height: 210)),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: GestureDetector(
                                      child: const ImageButton(
                                        imageBGUrl:
                                            "assets/bg/buttons/Main_personal.jpg",
                                        width: 120,
                                        height: 120,
                                      ),
                                      onTap: () async {
                                        // allNews = (await getDataNews())!;
                                        pushNewScreen(
                                          context,
                                          screen: const NewsPage(),
                                          withNavBar:
                                              true, // OPTIONAL VALUE. True by default.
                                          pageTransitionAnimation:
                                              PageTransitionAnimation
                                                  .slideRight, // OPTIONAL
                                        );
                                      }),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: GestureDetector(
                                      child: const ImageButton(
                                        imageBGUrl:
                                            "assets/bg/buttons/Main_loyal.jpg",
                                        width: 120,
                                        height: 120,
                                      ),
                                      onTap: () async {
                                        // allNews = (await getDataNews())!;
                                        pushNewScreen(
                                          context,
                                          screen: const NewsPage(),
                                          withNavBar:
                                              true, // OPTIONAL VALUE. True by default.
                                          pageTransitionAnimation:
                                              PageTransitionAnimation
                                                  .slideRight, // OPTIONAL
                                        );
                                      }),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: GestureDetector(
                                      child: const ImageButton(
                                    imageBGUrl:
                                        "assets/bg/buttons/Main_business.jpg",
                                    width: 120,
                                    height: 210,
                                  )),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: GestureDetector(
                                      child: const ImageButton(
                                          imageBGUrl:
                                              "assets/bg/buttons/Main_catalog.jpg",
                                          width: 120,
                                          height: 30)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      popularData!.isNotEmpty
                          ? const TitleBlock(
                              title: 'Популярные товары',
                              indexTab: 1,
                            )
                          : Container(),
                      popularData.isNotEmpty
                          ? ConstrainedBox(
                              constraints: const BoxConstraints(
                                  minWidth: double.infinity, maxHeight: 380),
                              child: FSCarouselSliderFiltered(
                                listItemFilter: popularData,
                                //aspectRatio: 3 / 6,
                                aspectRatio: 0.55,
                              ),
                            )
                          : Container(),
                      likeData!.isNotEmpty
                          ? const TitleBlock(
                              title: 'Возможно, вам это понравится',
                              indexTab: 1,
                            )
                          : Container(),
                      likeData.isNotEmpty
                          ? ConstrainedBox(
                              constraints: const BoxConstraints(
                                  minWidth: double.infinity, maxHeight: 380),
                              child: FSCarouselSliderFiltered(
                                listItemFilter: likeData,
                                aspectRatio: 3 / 6,
                              ),
                            )
                          : Container(),
                      /*               Row(children: [
                  Text('HOME PAGE1'),
                  Text('HOME PAGE2'),
                ]), */

                      /*                     ElevatedButton(
                      onPressed: () async {
                        await loginFS('cossack_box@mail.ru', 'Qwerty12345',
                            '+79031607105', '5963');
                        User? readUserData = (await getUser());
                        if (kDebugMode) {
                          print('readUserData: ${jsonEncode(readUserData)}');
                        }
                        ref.read(userState.state).state = readUserData;
                      },
                      child: const Text('Вход')), */

                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(),
                      ),
                    ],
                  )
                : Container(),
          ));
    });
  }
}

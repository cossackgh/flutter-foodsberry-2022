import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/favorites/favorites.dart';
import 'package:foodsberrymobile/store/global/products/product_filter.dart';
import 'package:foodsberrymobile/store/global/products/products.dart';
import 'package:foodsberrymobile/store/global/theme.dart';
import 'package:foodsberrymobile/transport/api/favorites.dart';
import 'package:foodsberrymobile/transport/api/filtered.dart';
import 'package:foodsberrymobile/views/pages/product/index.dart';
import 'package:foodsberrymobile/views/widgets/icons.dart';

import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CardProduct extends ConsumerWidget {
  const CardProduct(
      {Key? key, required this.dataCardProduct, this.isFavoritesPage = true})
      : super(key: key);

  final Products? dataCardProduct;
  final bool? isFavoritesPage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final StateProvider<int?> localTABState = StateProvider((ref) => 0);
    final StateProvider<String?> localPriceState =
        StateProvider((ref) => dataCardProduct!.sku![0].price!.toString());

    final StateProvider<int?> localSKUIndexState = StateProvider((ref) => 0);
    final StateProvider<bool?> localIsFavoriteState =
        StateProvider((ref) => dataCardProduct!.isFavorite!);

    String actualPrice = dataCardProduct!.sku![0].price!.toString();
    bool? isSKUView = dataCardProduct!.sku!.length > 1;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
          margin: EdgeInsets.all(2),
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Colors.black54, blurRadius: 1, spreadRadius: 0),
                BoxShadow(color: Colors.white, blurRadius: 6, spreadRadius: 5),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              border: Border.all(color: Colors.black12)),
          child: Consumer(
            builder: (context, ref, _) {
              final localPriceData = ref.watch(localPriceState.state).state;
              final localSKUIndexData =
                  ref.watch(localSKUIndexState.state).state;
              final favoritesData = ref.watch(localIsFavoriteState.state).state;
/*             print('favorite refresh name => ${dataCardProduct!.name}');
            print('favorite refresh => ${dataCardProduct!.isFavorite}'); */

              return Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: LayoutBuilder(builder: (_, constraints) {
                                  return CachedNetworkImage(
                                    imageUrl: dataCardProduct!.image!,
                                    fit: BoxFit.contain,
                                    width: constraints.maxWidth - 10,
                                    height: constraints.maxWidth - 12,
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
                              screen:
                                  ProductPage(dataProduct: dataCardProduct!),
                              withNavBar:
                                  true, // OPTIONAL VALUE. True by default.
                              pageTransitionAnimation: PageTransitionAnimation
                                  .slideRight, // OPTIONAL
                            ),

                            /* {
                            GoRouter.of(context).go(
                                '/product/' + dataCardProduct!.id.toString());
                          }, */
                          ),
                        ],
                      )),
                      // Title Product
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 4.0),
                            child: Text(dataCardProduct!.name!,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: CustomTextStyle.cardProductTitle),
                          ),
                        ],
                      )),
                    ],
                  ),
/*           Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            verticalDirection: VerticalDirection.up,
            children: [
              Expanded(flex: 2, child: Container()),
              Expanded(
                flex: 2,
                child: FractionallySizedBox(
                  alignment: Alignment.topCenter,
                  widthFactor: 1.0, // between 0 and 1
                  heightFactor: 0.05,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.zero,
                            topRight: Radius.zero,
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                        border: Border.all(color: Colors.pink)),
                    alignment: Alignment.topCenter,
                    child: const Text('-4%',
                        style: CustomTextStyle.cardProductTopStick),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FractionallySizedBox(
                  alignment: Alignment.topCenter,
                  widthFactor: 1.0, // between 0 and 1
                  heightFactor: 0.05,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.zero,
                            topRight: Radius.zero,
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                        border: Border.all(color: Colors.orange)),
                    alignment: Alignment.topCenter,
                    child: const Text('ХИТ',
                        style: CustomTextStyle.cardProductTopStick),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: FractionallySizedBox(
                  alignment: Alignment.topCenter,
                  widthFactor: 1.0, // between 0 and 1
                  heightFactor: 0.05,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.zero,
                            topRight: Radius.zero,
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                        border: Border.all(color: Colors.green)),
                    alignment: Alignment.topCenter,
                    child: const Text('НОВИНКА',
                        style: CustomTextStyle.cardProductTopStick),
                  ),
                ),
              ),
              Expanded(flex: 2, child: Container()),
            ],
          ), */
/*                 Positioned(
                    top: 15,
                    left: 12,
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
                        onPressed: () {
                          print('ADD RAITING');
                        },
                        child: Row(
                          verticalDirection: VerticalDirection.up,
                          children: const [
                            Text(
                              '4.5',
                              style: CustomTextStyle.cardProductStars,
                            ),
                            Icon(
                              CupertinoIcons.star_fill,
                              size: 16,
                              color: Colors.amber,
                            ),
                          ],
                        ))), */
                  Positioned(
                      top: 12,
                      right: 12,
                      child: TextButton(
                          style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(40, 40)),
/*                           backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white60), */
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                          ),
                          onPressed: () async {
                            print(
                                'SWITCH FAVORITE ${dataCardProduct!.isFavorite}');
                            print('isFavoritesPage => $isFavoritesPage');
                            if (isFavoritesPage! == true) {
                              var result = await showOkCancelAlertDialog(
                                context: context,
                                title: 'Удалить',
                                message: 'Удалить этот продукт из избранного?',
                                barrierDismissible: false,
                                okLabel: 'Да',
                                cancelLabel: 'Нет',
                              );

                              print('isOk =   $result');
                              if (result.index == 0) {
                                ref.read(listFavoritesState.state).state =
                                    await deleteFavoriteProducts(
                                        dataCardProduct!.id!);
                              }
                            } else if (favoritesData == true) {
                              ref.read(listFavoritesState.state).state =
                                  await deleteFavoriteProducts(
                                      dataCardProduct!.id!);
                              ref.read(localIsFavoriteState.state).state =
                                  false;
                              ref.read(listFilterLike.state).state =
                                  (await getDataFilteredProducts(FilterProducts(
                                      page: 1,
                                      pageSize: 30,
                                      recomLike: true)))!;
                              ref.read(listFilterPopular.state).state =
                                  (await getDataFilteredProducts(FilterProducts(
                                      page: 1,
                                      pageSize: 30,
                                      recomPopular: true)))!;
                              print(
                                  'Del favoritesData => ${dataCardProduct!.isFavorite}');
                            } else if (favoritesData == false) {
                              ref.read(listFavoritesState.state).state =
                                  await addFavoriteProducts(
                                      dataCardProduct!.id!);
                              ref.read(localIsFavoriteState.state).state = true;
                              ref.read(listFilterLike.state).state =
                                  (await getDataFilteredProducts(FilterProducts(
                                      page: 1,
                                      pageSize: 30,
                                      recomLike: true)))!;
                              ref.read(listFilterPopular.state).state =
                                  (await getDataFilteredProducts(FilterProducts(
                                      page: 1,
                                      pageSize: 30,
                                      recomPopular: true)))!;
                              print(
                                  'Add favoritesData => ${dataCardProduct!.isFavorite}');
                            }
                          },
                          child: borderIcon(
                              22,
                              favoritesData == true ? Colors.pink : Colors.grey,
                              Colors.white))),
                  isSKUView
                      ? SizedBox(
                          height: 120,
                          child: DefaultTabController(
                              length: 2,
                              child: Builder(builder: (BuildContext context) {
                                final localTABData =
                                    ref.watch(localTABState.state).state;

                                final TabController tabController =
                                    DefaultTabController.of(context)!;

                                print(
                                    'tabController = ${tabController.hasListeners}');
                                if (!tabController.hasListeners) {
                                  tabController.addListener(() {
                                    if (!tabController.indexIsChanging) {
                                      print('TabIndex = $localTABData');
                                      ref.read(localTABState.state).state =
                                          tabController.index;
                                    }
                                  });
                                }

                                return Column(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    ButtonsTabBar(
//                                borderWidth: 1,
                                      labelSpacing: 0,
                                      buttonMargin: EdgeInsets.all(0),
                                      radius: 12,
                                      controller: tabController,
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 0),
                                      //  elevation: 3,
                                      backgroundColor: Colors.white,
                                      unselectedBackgroundColor: Colors.white,
                                      /*                       unselectedLabelStyle:
                                    TextStyle(color: Colors.black),
                                labelStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold), */

                                      tabs: [
                                        Tab(
                                          //  icon: Icon(Icons.directions_car),
                                          //text: "Упаковка",
                                          child: Container(
                                            width:
                                                (constraints.maxWidth / 2) - 5,
                                            height: 30,
                                            decoration: localTABData! == 0
                                                ? const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.vertical(
                                                      top: Radius.circular(10),
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black45,
                                                        offset: Offset(0, -2),
                                                      ),
/*                                                       BoxShadow(
                                                        color: Colors.black45,
                                                        offset: Offset(-2, 0),
                                                      ), */
                                                      BoxShadow(
                                                        color: Colors.black45,
                                                        offset: Offset(0, 0),
                                                      ),
                                                    ],
                                                  )
                                                : const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(10),
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black45,
                                                        offset: Offset(0, 2),
                                                      ),
                                                      BoxShadow(
                                                        color: Colors.black45,
                                                        offset: Offset(0, 0),
                                                      ),
/*                                                       BoxShadow(
                                                        color: Colors.black45,
                                                        offset: Offset(-2, 0),
                                                      ), */
                                                    ],
                                                  ),
                                            child: Center(
                                              child: Text(
                                                dataCardProduct!
                                                    .sku![0].measureInfo!,
                                                textAlign: TextAlign.center,
                                                style:
                                                    CustomTextStyle.tABTextSKU0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Tab(
                                          //  icon: Icon(Icons.directions_car),
                                          //text: "Упаковка",
                                          child: Container(
                                            width:
                                                (constraints.maxWidth / 2) - 5,
                                            height: 30,
                                            decoration: localTABData == 1
                                                ? const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black45,
                                                        offset: Offset(0, -2),
                                                      ),
/*                                                       BoxShadow(
                                                        color: Colors.black45,
                                                        offset: Offset(3, 0),
                                                      ), */
                                                    ],
                                                  )
                                                : const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(10),
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black45,
                                                        offset: Offset(0, 2),
                                                      ),
/*                                                       BoxShadow(
                                                        color: Colors.black45,
                                                        offset: Offset(4, 0),
                                                      ), */
                                                    ],
                                                  ),
                                            child: Center(
                                              child: Text(
                                                dataCardProduct!
                                                    .sku![1].measureInfo!,
                                                textAlign: TextAlign.center,
                                                style:
                                                    CustomTextStyle.tABTextSKU1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: [
                                          GridView.count(
                                              childAspectRatio: 2 / 1,
                                              crossAxisCount: 2,
                                              children: [
                                                dataCardProduct!
                                                            .sku![0].priceOld! >
                                                        0
                                                    ? Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            dataCardProduct!
                                                                    .sku![0]
                                                                    .price!
                                                                    .toString() +
                                                                ' руб',
                                                            style: CustomTextStyle
                                                                .cardProductPrice,
                                                          ),
                                                          Text(
                                                            dataCardProduct!
                                                                    .sku![0]
                                                                    .priceOld!
                                                                    .toString() +
                                                                ' руб',
                                                            style: CustomTextStyle
                                                                .cardProductPriceOld,
                                                          )
                                                        ],
                                                      )
                                                    : Container(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                          dataCardProduct!
                                                                  .sku![0]
                                                                  .price!
                                                                  .toString() +
                                                              ' р/кг',
                                                          style: CustomTextStyle
                                                              .cardProductPrice,
                                                        ),
                                                      ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 3),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/icon-kg.png',
                                                        width: 16,
                                                        height: 14,
                                                      ),
                                                      Text(
                                                        dataCardProduct!.sku![0]
                                                            .measureInfo!,
                                                        maxLines: 2,
                                                        softWrap: true,
                                                        style: CustomTextStyle
                                                            .cardProductMeasure,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Flex(
                                                    direction: Axis.horizontal,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        dataCardProduct!
                                                                .sku![0].price!
                                                                .toString() +
                                                            ' руб',
                                                        style: CustomTextStyle
                                                            .cardProductFullPrice,
                                                      ),
                                                    ]),
                                                Flex(
                                                  direction: Axis.horizontal,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      width: 80,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          primary: FSColors
                                                              .baseFSColor,
                                                          alignment:
                                                              Alignment.center,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.0)),
                                                          minimumSize:
                                                              const Size(
                                                                  120, 30),
                                                          //minimumSize: const Size.fromHeight(30),
                                                          //minimumSize: const Size.fromWidth(50),
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'ADD TO SHOP CART 0');
                                                        },
                                                        child: const Icon(
                                                            CupertinoIcons
                                                                .shopping_cart),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ]),
                                          GridView.count(
                                              childAspectRatio: 2 / 1,
                                              crossAxisCount: 2,
                                              children: [
                                                dataCardProduct!
                                                            .sku![1].priceOld! >
                                                        0
                                                    ? Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            dataCardProduct!
                                                                    .sku![1]
                                                                    .price!
                                                                    .toString() +
                                                                ' руб',
                                                            style: CustomTextStyle
                                                                .cardProductPriceMore1,
                                                          ),
                                                          Text(
                                                            dataCardProduct!
                                                                    .sku![1]
                                                                    .priceOld!
                                                                    .toString() +
                                                                ' руб',
                                                            style: CustomTextStyle
                                                                .cardProductPriceOld,
                                                          )
                                                        ],
                                                      )
                                                    : Container(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                          dataCardProduct!
                                                                  .sku![1]
                                                                  .price!
                                                                  .toString() +
                                                              ' р/кг',
                                                          style: CustomTextStyle
                                                              .cardProductPriceMore1,
                                                        ),
                                                      ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 3),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/icon-kg.png',
                                                        width: 16,
                                                        height: 14,
                                                      ),
                                                      Flexible(
                                                        child: Text(
                                                          dataCardProduct!
                                                              .sku![1]
                                                              .measureInfo!,
                                                          maxLines: 2,
                                                          softWrap: true,
                                                          style: CustomTextStyle
                                                              .cardProductMeasure,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Flex(
                                                    direction: Axis.horizontal,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        dataCardProduct!
                                                                .sku![1].price!
                                                                .toString() +
                                                            ' руб',
                                                        style: CustomTextStyle
                                                            .cardProductFullPrice,
                                                      ),
                                                    ]),
                                                Flex(
                                                  direction: Axis.horizontal,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      width: 80,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          primary: FSColors
                                                              .baseFSColor,
                                                          alignment:
                                                              Alignment.center,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.0)),
                                                          minimumSize:
                                                              const Size(
                                                                  120, 30),
                                                          //minimumSize: const Size.fromHeight(30),
                                                          //minimumSize: const Size.fromWidth(50),
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'ADD TO SHOP CART 1');
                                                        },
                                                        child: const Icon(
                                                            CupertinoIcons
                                                                .shopping_cart),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ]),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              })),
                        )
                      : Positioned(
                          bottom: 0,
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            //mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 180,
                                height: 38,
                                margin: const EdgeInsets.all(10.0),
                                padding: const EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 1,
                                          spreadRadius: 0),
                                      BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 6,
                                          spreadRadius: 5),
                                    ],
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    border: Border.all(color: Colors.black12)),
                                child: Text(
                                    dataCardProduct!
                                        .sku![localSKUIndexData!].measureInfo!,
                                    style: CustomTextStyle.textSKUButton),
                              ),
                              Row(
                                //direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(
                                    width: 120,
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        dataCardProduct!.sku![0].price!
                                                .toString() +
                                            ' руб',
                                        style: CustomTextStyle
                                            .cardProductFullPrice,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: FSColors.baseFSColor,
                                        alignment: Alignment.center,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4.0)),
                                        minimumSize: const Size(120, 30),
                                        //minimumSize: const Size.fromHeight(30),
                                        //minimumSize: const Size.fromWidth(50),
                                      ),
                                      onPressed: () {
                                        print('ADD TO SHOP CART');
                                      },
                                      child: const Icon(
                                          CupertinoIcons.shopping_cart),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                ],
              );
            },
/*             child: Container(
              width: 20,
              height: 30,
              color: FSColors.baseFSColor,
            ), */
          ));
    });
  }
}

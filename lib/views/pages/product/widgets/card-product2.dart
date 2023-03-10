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

class CardProductN1 extends ConsumerWidget {
  const CardProductN1(
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
              BoxShadow(color: Colors.black54, blurRadius: 1, spreadRadius: 0),
              BoxShadow(color: Colors.white, blurRadius: 6, spreadRadius: 5),
            ],
            borderRadius: const BorderRadius.all(Radius.circular(18)),
            border: Border.all(color: Colors.black12)),
        child: Consumer(builder: (context, ref, _) {
          final localSKUIndexData = ref.watch(localSKUIndexState.state).state;

          final favoritesData = ref.watch(localIsFavoriteState.state).state;
/*             print('favorite refresh name => ${dataCardProduct!.name}');
            print('favorite refresh => ${dataCardProduct!.isFavorite}'); */

          return Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: LayoutBuilder(builder: (_, constraints) {
                        return CachedNetworkImage(
                          imageUrl: dataCardProduct!.image!,
                          fit: BoxFit.contain,
                          width: constraints.maxWidth - 10,
                          height: constraints.maxWidth - 10,
                          placeholder: (context, url) => const Center(
                            child: SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator()),
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                              'assets/images/empty-image.jpg',
                              fit: BoxFit.cover),
                        );
                      })),
                  onTap: () => pushNewScreen(
                    context,
                    screen: ProductPage(dataProduct: dataCardProduct!),
                    withNavBar: true, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation:
                        PageTransitionAnimation.slideRight, // OPTIONAL
                  ),

                  /* {
                              GoRouter.of(context).go(
                                  '/product/' + dataCardProduct!.id.toString());
                            }, */
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 4.0),
                  child: Text(dataCardProduct!.name!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: CustomTextStyle.cardProductTitle),
                ),
                isSKUView
                    ? SizedBox(
                        height: 147,
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
                                        //text: "????????????????",
                                        child: Container(
                                          width: (constraints.maxWidth / 2) - 5,
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
                                        //text: "????????????????",
                                        child: Container(
                                          width: (constraints.maxWidth / 2) - 5,
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
                                            physics:
                                                const BouncingScrollPhysics(),
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
                                                              ' ??????',
                                                          style: CustomTextStyle
                                                              .cardProductPrice,
                                                        ),
                                                        Text(
                                                          dataCardProduct!
                                                                  .sku![0]
                                                                  .priceOld!
                                                                  .toString() +
                                                              ' ??????',
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
                                                                .sku![0].price!
                                                                .toString() +
                                                            ' ??/????',
                                                        style: CustomTextStyle
                                                            .cardProductPrice,
                                                      ),
                                                    ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/icon-kg.png',
                                                    width: 16,
                                                    height: 14,
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      dataCardProduct!
                                                          .sku![0].measureInfo!,
                                                      maxLines: 2,
                                                      softWrap: false,
                                                      style: CustomTextStyle
                                                          .cardProductMeasure,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Flex(
                                                  direction: Axis.horizontal,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      dataCardProduct!
                                                              .sku![0].price!
                                                              .toString() +
                                                          ' ??????',
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
                                                            const Size(120, 30),
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
                                                              ' ??????',
                                                          style: CustomTextStyle
                                                              .cardProductPriceMore1,
                                                        ),
                                                        Text(
                                                          dataCardProduct!
                                                                  .sku![1]
                                                                  .priceOld!
                                                                  .toString() +
                                                              ' ??????',
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
                                                                .sku![1].price!
                                                                .toString() +
                                                            ' ??/????',
                                                        style: CustomTextStyle
                                                            .cardProductPriceMore1,
                                                      ),
                                                    ),
                                              SizedBox(
                                                width: 40,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      'assets/images/icon-kg.png',
                                                      width: 16,
                                                      height: 14,
                                                    ),
                                                    Flexible(
                                                      child: Text(
                                                        dataCardProduct!.sku![1]
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
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      dataCardProduct!
                                                              .sku![1].price!
                                                              .toString() +
                                                          ' ??????',
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
                                                            const Size(120, 30),
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
                    : Column(
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
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                border: Border.all(color: Colors.black12)),
                            child: Text(
                                dataCardProduct!
                                    .sku![localSKUIndexData!].measureInfo!,
                                style: CustomTextStyle.textSKUButton),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              //direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        dataCardProduct!.sku![0].price!
                                                .toString() +
                                            ' ??????',
                                        style: CustomTextStyle
                                            .cardProductFullPrice,
                                      ),
                                    ]),
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
                                      print('ADD TO SHOP CART 1 SKU');
                                    },
                                    child: const Icon(
                                        CupertinoIcons.shopping_cart),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 8),
                  //width: 50,
                  height: 20,
                  child: Row(
                    children: [
                      Visibility(
                        visible: dataCardProduct!.discount!.round() != 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.zero,
                                  topRight: Radius.zero,
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                            ),
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 2),
                              child: Text(
                                  '-${dataCardProduct!.discount!.round()}%',
                                  style: CustomTextStyle.cardProductTopStick),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: FSColors.baseFSColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.zero,
                                topRight: Radius.zero,
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                          ),
                          alignment: Alignment.topCenter,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 2),
                            child: Text('??????',
                                style: CustomTextStyle.cardProductTopStick),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  //  color: FSColors.fuxiaFSColor,
                  child: TextButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(40, 40)),
/*                           backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white60), */
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                      ),
                      onPressed: () async {
                        print('SWITCH FAVORITE ${dataCardProduct!.isFavorite}');
                        print('isFavoritesPage => $isFavoritesPage');
                        if (isFavoritesPage! == true) {
                          var result = await showOkCancelAlertDialog(
                            context: context,
                            title: '??????????????',
                            message: '?????????????? ???????? ?????????????? ???? ?????????????????????',
                            barrierDismissible: false,
                            okLabel: '????',
                            cancelLabel: '??????',
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
                          ref.read(localIsFavoriteState.state).state = false;
                          ref.read(listFilterLike.state).state =
                              (await getDataFilteredProducts(FilterProducts(
                                  page: 1, pageSize: 30, recomLike: true)))!;
                          ref.read(listFilterPopular.state).state =
                              (await getDataFilteredProducts(FilterProducts(
                                  page: 1, pageSize: 30, recomPopular: true)))!;
                          print(
                              'Del favoritesData => ${dataCardProduct!.isFavorite}');
                        } else if (favoritesData == false) {
                          ref.read(listFavoritesState.state).state =
                              await addFavoriteProducts(dataCardProduct!.id!);
                          ref.read(localIsFavoriteState.state).state = true;
                          ref.read(listFilterLike.state).state =
                              (await getDataFilteredProducts(FilterProducts(
                                  page: 1, pageSize: 30, recomLike: true)))!;
                          ref.read(listFilterPopular.state).state =
                              (await getDataFilteredProducts(FilterProducts(
                                  page: 1, pageSize: 30, recomPopular: true)))!;
                          print(
                              'Add favoritesData => ${dataCardProduct!.isFavorite}');
                        }
                      },
                      child: borderIcon(
                          22,
                          favoritesData == true ? Colors.pink : Colors.grey,
                          Colors.white)),
                )
              ],
            ),
          ]);
        }),
      );
    });
  }
}

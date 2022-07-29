import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:foodsberrymobile/store/global/favorites/favorites.dart';
import 'package:foodsberrymobile/store/global/products/products.dart';
import 'package:foodsberrymobile/store/global/theme.dart';
import 'package:foodsberrymobile/transport/api/favorites.dart';
import 'package:foodsberrymobile/views/pages/product/index.dart';
import 'package:foodsberrymobile/views/widgets/carousel-slider.dart';
import 'package:group_button/group_button.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tab_container/tab_container.dart';

void doNothing(BuildContext context) {}

class CardFavorite extends StatelessWidget {
  const CardFavorite(
      {Key? key, required this.dataCardProduct, this.isFavoritesPage = false})
      : super(key: key);

  final Products? dataCardProduct;
  final bool? isFavoritesPage;

  @override
  Widget build(BuildContext context) {
    final StateProvider<int?> localTABState = StateProvider((ref) => 0);
    final StateProvider<String?> localPriceState =
        StateProvider((ref) => dataCardProduct!.sku![0].price!.toString());

    final StateProvider<int?> localSKUIndexState = StateProvider((ref) => 0);
    final controllerGrpButton = GroupButtonController();
    controllerGrpButton.selectIndex(0);
    final TabContainerController _controllerTAB =
        TabContainerController(length: 2);

    _controllerTAB.notifyListeners();

    String actualPrice = dataCardProduct!.sku![0].price!.toString();
    bool? isSKUView = dataCardProduct!.sku!.length > 1;
    return Consumer(
      builder: (context, ref, _) {
        final localPriceData = ref.watch(localPriceState.state).state;
        final localTABData = ref.watch(localTABState.state).state;
        final dataallFavProduct = ref.watch(listFavoritesState.state).state;

        final localSKUIndexData = ref.watch(localSKUIndexState.state).state;

        _controllerTAB.addListener(() {
          print('TAB Change ${_controllerTAB.index}');
          ref.read(localTABState.state).state = _controllerTAB.index;
        });
        void deleteFav(BuildContext context) async {
          ref.read(listFavoritesState.state).state =
              await deleteFavoriteProducts(dataCardProduct!.id!);
        }

        return Slidable(
          // Specify a key if the Slidable is dismissible.
          key: const ValueKey(0),

          // The start action pane is the one at the left or the top side.
/*           startActionPane: ActionPane(
            // A motion is a widget used to control how the pane animates.
            motion: const ScrollMotion(),

            // A pane can dismiss the Slidable.
            dismissible: DismissiblePane(onDismissed: () {}),

            // All actions are defined in the children parameter.
            children: const [
              // A SlidableAction can have an icon and/or a label.

              SlidableAction(
                onPressed: doNothing,
                backgroundColor: Color(0xFF21B7CA),
                foregroundColor: Colors.white,
                icon: Icons.share,
                label: 'Share',
              ),
            ],
          ), */

          // The end action pane is the one at the right or the bottom side.
          endActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: deleteFav,
                backgroundColor: Color(0xFFFE4A49),
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Удалить',
              ),
/*               SlidableAction(
                onPressed: doNothing,
                backgroundColor: FSColors.baseFSColor,
                foregroundColor: Colors.white,
                icon: Icons.share,
                label: 'Share',
              ),
              SlidableAction(
                onPressed: doNothing,
                backgroundColor: Color(0xFF0392CF),
                foregroundColor: Colors.white,
                icon: Icons.save,
                label: 'Save',
              ), */
            ],
          ),

          child: Column(
            children: [
              SizedBox(
                  height: 165,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                //  verticalDirection: VerticalDirection.up,
                                children: [
                                  Visibility(
                                    visible:
                                        dataCardProduct!.discount!.round() != 0,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2),
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
                                              style: CustomTextStyle
                                                  .cardProductTopStick),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2),
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
                                        child: Text('хит',
                                            style: CustomTextStyle
                                                .cardProductTopStick),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3.0),
                              child: FSImageProductCarouselSlider(
                                listItem: dataCardProduct!.images,
                                aspectRatio: 1.6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 7,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: LayoutBuilder(builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      '${dataCardProduct!.name}',
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyle.singleProductTitle,
                                    ),
                                  ),
                                  dataCardProduct!.sku!.length > 1
                                      ? SizedBox(
                                          height: 110,
                                          child: DefaultTabController(
                                              length: 2,
                                              child: Builder(builder:
                                                  (BuildContext context) {
                                                final localTABData = ref
                                                    .watch(localTABState.state)
                                                    .state;

                                                final TabController
                                                    tabController =
                                                    DefaultTabController.of(
                                                        context)!;

                                                print(
                                                    'tabController = ${tabController.hasListeners}');
                                                if (!tabController
                                                    .hasListeners) {
                                                  tabController.addListener(() {
                                                    if (!tabController
                                                        .indexIsChanging) {
                                                      print(
                                                          'TabIndex = $localTABData');
                                                      ref
                                                              .read(
                                                                  localTABState
                                                                      .state)
                                                              .state =
                                                          tabController.index;
                                                    }
                                                  });
                                                }

                                                return Column(
                                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    ButtonsTabBar(
                                                      //                                borderWidth: 1,
                                                      labelSpacing: 0,
                                                      buttonMargin:
                                                          EdgeInsets.all(0),
                                                      radius: 12,
                                                      controller: tabController,
                                                      contentPadding:
                                                          const EdgeInsets
                                                                  .symmetric(
                                                              horizontal: 0),
                                                      //elevation: 3,
                                                      backgroundColor:
                                                          Colors.white,
                                                      unselectedBackgroundColor:
                                                          Colors.white,

                                                      tabs: [
                                                        Tab(
                                                          child: Container(
                                                            width: (constraints
                                                                        .maxWidth /
                                                                    2) -
                                                                15,
                                                            height: 30,
                                                            decoration:
                                                                localTABData! ==
                                                                        0
                                                                    ? const BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.vertical(
                                                                          top: Radius.circular(
                                                                              10),
                                                                        ),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color:
                                                                                Colors.black45,
                                                                            offset:
                                                                                Offset(0, -2),
                                                                          ),
                                                                          BoxShadow(
                                                                            color:
                                                                                Colors.black45,
                                                                            offset:
                                                                                Offset(0, 0),
                                                                          ),
                                                                        ],
                                                                      )
                                                                    : const BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomRight:
                                                                              Radius.circular(10),
                                                                        ),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color:
                                                                                Colors.black45,
                                                                            offset:
                                                                                Offset(0, 2),
                                                                          ),
                                                                          BoxShadow(
                                                                            color:
                                                                                Colors.black45,
                                                                            offset:
                                                                                Offset(0, 0),
                                                                          ),
                                                                        ],
                                                                      ),
                                                            child: Center(
                                                              child: Text(
                                                                dataCardProduct!
                                                                    .sku![0]
                                                                    .measureInfo!,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: CustomTextStyle
                                                                    .tABTextSKU0,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Tab(
                                                          child: Container(
                                                            width: (constraints
                                                                        .maxWidth /
                                                                    2) -
                                                                15,
                                                            height: 30,
                                                            decoration: localTABData ==
                                                                    1
                                                                ? const BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              10),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              10),
                                                                    ),
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        color: Colors
                                                                            .black45,
                                                                        offset: Offset(
                                                                            0,
                                                                            -2),
                                                                      ),
                                                                    ],
                                                                  )
                                                                : const BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              10),
                                                                    ),
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        color: Colors
                                                                            .black45,
                                                                        offset: Offset(
                                                                            0,
                                                                            2),
                                                                      ),
                                                                    ],
                                                                  ),
                                                            child: Center(
                                                              child: Text(
                                                                dataCardProduct!
                                                                    .sku![1]
                                                                    .measureInfo!,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: CustomTextStyle
                                                                    .tABTextSKU1,
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
                                                              childAspectRatio:
                                                                  4.3,
                                                              crossAxisCount: 2,
                                                              children: [
                                                                dataCardProduct!
                                                                            .sku![0]
                                                                            .priceOld! >
                                                                        0
                                                                    ? Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Text(
                                                                            dataCardProduct!.sku![0].price!.toString() +
                                                                                ' руб',
                                                                            style:
                                                                                CustomTextStyle.cardProductPrice,
                                                                          ),
                                                                          Text(
                                                                            dataCardProduct!.sku![0].priceOld!.toString() +
                                                                                ' руб',
                                                                            style:
                                                                                CustomTextStyle.cardProductPriceOld,
                                                                          )
                                                                        ],
                                                                      )
                                                                    : Container(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child:
                                                                            Text(
                                                                          dataCardProduct!.sku![0].price!.toString() +
                                                                              ' р/кг',
                                                                          style:
                                                                              CustomTextStyle.cardProductPrice,
                                                                        ),
                                                                      ),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Image.asset(
                                                                      'assets/images/icon-kg.png',
                                                                      width: 16,
                                                                      height:
                                                                          14,
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Text(
                                                                        dataCardProduct!
                                                                            .sku![0]
                                                                            .measureInfo!,
                                                                        maxLines:
                                                                            2,
                                                                        softWrap:
                                                                            false,
                                                                        style: CustomTextStyle
                                                                            .cardProductMeasure,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Flex(
                                                                    direction: Axis
                                                                        .horizontal,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        dataCardProduct!.sku![0].price!.toString() +
                                                                            ' руб',
                                                                        style: CustomTextStyle
                                                                            .cardProductFullPrice,
                                                                      ),
                                                                    ]),
                                                                Flex(
                                                                  direction: Axis
                                                                      .horizontal,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    SizedBox(
                                                                      width: 80,
                                                                      child:
                                                                          ElevatedButton(
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary:
                                                                              FSColors.baseFSColor,
                                                                          alignment:
                                                                              Alignment.center,
                                                                          shape:
                                                                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                                                                          minimumSize: const Size(
                                                                              120,
                                                                              30),
                                                                          //minimumSize: const Size.fromHeight(30),
                                                                          //minimumSize: const Size.fromWidth(50),
                                                                        ),
                                                                        onPressed:
                                                                            () {
                                                                          print(
                                                                              'ADD TO SHOP CART 0');
                                                                        },
                                                                        child: const Icon(
                                                                            CupertinoIcons.shopping_cart),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                )
                                                              ]),
                                                          GridView.count(
                                                              physics:
                                                                  const BouncingScrollPhysics(),
                                                              childAspectRatio:
                                                                  4.3,
                                                              crossAxisCount: 2,
                                                              children: [
                                                                dataCardProduct!
                                                                            .sku![1]
                                                                            .priceOld! >
                                                                        0
                                                                    ? Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Text(
                                                                            dataCardProduct!.sku![1].price!.toString() +
                                                                                ' руб',
                                                                            style:
                                                                                CustomTextStyle.cardProductPriceMore1,
                                                                          ),
                                                                          Text(
                                                                            dataCardProduct!.sku![1].priceOld!.toString() +
                                                                                ' руб',
                                                                            style:
                                                                                CustomTextStyle.cardProductPriceOld,
                                                                          )
                                                                        ],
                                                                      )
                                                                    : Container(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child:
                                                                            Text(
                                                                          dataCardProduct!.sku![1].price!.toString() +
                                                                              ' р/кг',
                                                                          style:
                                                                              CustomTextStyle.cardProductPriceMore1,
                                                                        ),
                                                                      ),
                                                                SizedBox(
                                                                  width: 40,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Image
                                                                          .asset(
                                                                        'assets/images/icon-kg.png',
                                                                        width:
                                                                            16,
                                                                        height:
                                                                            14,
                                                                      ),
                                                                      Flexible(
                                                                        child:
                                                                            Text(
                                                                          dataCardProduct!
                                                                              .sku![1]
                                                                              .measureInfo!,
                                                                          maxLines:
                                                                              2,
                                                                          softWrap:
                                                                              true,
                                                                          style:
                                                                              CustomTextStyle.cardProductMeasure,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Flex(
                                                                    direction: Axis
                                                                        .horizontal,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        dataCardProduct!.sku![1].price!.toString() +
                                                                            ' руб',
                                                                        style: CustomTextStyle
                                                                            .cardProductFullPrice,
                                                                      ),
                                                                    ]),
                                                                Flex(
                                                                  direction: Axis
                                                                      .horizontal,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    SizedBox(
                                                                      width: 80,
                                                                      child:
                                                                          ElevatedButton(
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary:
                                                                              FSColors.baseFSColor,
                                                                          alignment:
                                                                              Alignment.center,
                                                                          shape:
                                                                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                                                                          minimumSize: const Size(
                                                                              120,
                                                                              30),
                                                                          //minimumSize: const Size.fromHeight(30),
                                                                          //minimumSize: const Size.fromWidth(50),
                                                                        ),
                                                                        onPressed:
                                                                            () {
                                                                          print(
                                                                              'ADD TO SHOP CART 1');
                                                                        },
                                                                        child: const Icon(
                                                                            CupertinoIcons.shopping_cart),
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
                                      : Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(2),
                                              child: Text(dataCardProduct!
                                                      .sku![0].price!
                                                      .toString() +
                                                  ' руб'),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 12,
                                                  bottom: 4,
                                                  right: 30),
                                              child: Container(
                                                  width: 80,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                      color: dataCardProduct!
                                                              .sku![0]
                                                              .issetInCart!
                                                          ? Colors.black26
                                                          : FSColors
                                                              .baseFSColor,

/*                                                       boxShadow: const [
                                                        BoxShadow(
                                                            color:
                                                                Colors.black54,
                                                            blurRadius: 1,
                                                            spreadRadius: 0),
                                                        BoxShadow(
                                                            color: Colors.white,
                                                            blurRadius: 6,
                                                            spreadRadius: 5),
                                                      ], */
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.circular(
                                                                  8)),
                                                      border: Border.all(
                                                          color:
                                                              Colors.black12)),
                                                  padding:
                                                      const EdgeInsets.all(2),
                                                  child: IconButton(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 3,
                                                        horizontal: 6),
                                                    color: Colors.white,
                                                    onPressed: () {
                                                      print('ADD TO SHOP CART');
                                                    },
                                                    icon: const Icon(
                                                        CupertinoIcons
                                                            .shopping_cart),
                                                  )),
                                            ),
                                          ],
                                        ),
                                ],
                              );
                            }),
                          ))
                    ],
                  )),
              const Divider(
                height: 2,
                thickness: 2,
                color: Colors.black12,
              ),
            ],
          ),
        );
      },
    );
  }
}

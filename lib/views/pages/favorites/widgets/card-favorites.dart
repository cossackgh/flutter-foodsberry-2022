import 'package:adaptive_dialog/adaptive_dialog.dart';
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

        final localSKUIndexData = ref.watch(localSKUIndexState.state).state;

        _controllerTAB.addListener(() {
          print('TAB Change ${_controllerTAB.index}');
          ref.read(localTABState.state).state = _controllerTAB.index;
        });

        return Slidable(
          // Specify a key if the Slidable is dismissible.
          key: const ValueKey(0),

          // The start action pane is the one at the left or the top side.
          startActionPane: ActionPane(
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
          ),

          // The end action pane is the one at the right or the bottom side.
          endActionPane: const ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: doNothing,
                backgroundColor: Color(0xFFFE4A49),
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),
              SlidableAction(
                onPressed: doNothing,
                backgroundColor: FSColors.baseFSColor,
                foregroundColor: Colors.white,
                icon: Icons.share,
                label: 'Share',
              ),
/*               SlidableAction(
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
                height: 150,
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
                            padding: const EdgeInsets.symmetric(horizontal: 4),
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
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 2),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 3),
                              child: Text(
                                '${dataCardProduct!.name}',
                                textAlign: TextAlign.left,
                                style: CustomTextStyle.singleProductTitle,
                              ),
                            ),
                            dataCardProduct!.sku!.length > 1
                                ? SizedBox(
                                    height: 80,
                                    child: TabContainer(
                                      controller: _controllerTAB,
                                      tabExtent: 30,
                                      tabEnd: 0.5,
                                      radius: 6,
                                      selectedTextStyle:
                                          CustomTextStyle.selectTABText,
                                      unselectedTextStyle:
                                          CustomTextStyle.unselectTABText,
                                      colors: const [
                                        Colors.white,
                                        Colors.white,

/*                                         FSColors.baseFSColor[100]!,
                                        FSColors.fuxiaFSColor[100]!, */
                                      ],
                                      children: [
                                        Row(
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
                                                  top: 4, bottom: 4, right: 4),
                                              child: Container(
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          FSColors.baseFSColor,
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
                                                  //  color: FSColors.baseFSColor,
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
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(2),
                                              child: Text(dataCardProduct!
                                                      .sku![1].price!
                                                      .toString() +
                                                  ' руб'),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 4, bottom: 4, right: 4),
                                              child: Container(
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                      color: dataCardProduct!
                                                              .sku![1]
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
                                        )
                                      ],
                                      isStringTabs: false,
                                      tabs: [
                                        Container(
                                          width: 60,
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 4),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: localTABData == 0
                                                  ? const Border(
                                                      top: BorderSide(
                                                        color: Colors.black38,
                                                        width: 1.4,
                                                      ),
                                                      left: BorderSide(
                                                        color: Colors.black38,
                                                        width: 1.4,
                                                      ),
                                                      right: BorderSide(
                                                        color: Colors.black38,
                                                        width: 1.4,
                                                      ),
                                                    )
                                                  : Border.all(
                                                      color: Colors.white,
                                                      width: 0)),
                                          child: const Text(
                                            'кг',
                                            textAlign: TextAlign.center,
                                            style:
                                                CustomTextStyle.selectTABText,
                                          ),
                                        ),
                                        Container(
                                          width: 60,
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 4),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: localTABData == 1
                                                  ? const Border(
                                                      top: BorderSide(
                                                        color: Colors.black38,
                                                        width: 1.4,
                                                      ),
                                                      left: BorderSide(
                                                        color: Colors.black38,
                                                        width: 1.4,
                                                      ),
                                                      right: BorderSide(
                                                        color: Colors.black38,
                                                        width: 1.4,
                                                      ),
                                                    )
                                                  : Border.all(
                                                      color: Colors.white,
                                                      width: 0)),
                                          child: const Text(
                                            'палета',
                                            textAlign: TextAlign.center,
                                            style:
                                                CustomTextStyle.selectTABText,
                                          ),
                                        ),
                                      ],
/*                                       tabs: const [
                                        'кг',
                                        'палета',
                                      ], */
                                    ),
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
                                            top: 12, bottom: 4, right: 4),
                                        child: Container(
                                            height: 35,
                                            decoration: BoxDecoration(
                                                color: dataCardProduct!
                                                        .sku![0].issetInCart!
                                                    ? Colors.black26
                                                    : FSColors.baseFSColor,

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
                                                    const BorderRadius.all(
                                                        Radius.circular(8)),
                                                border: Border.all(
                                                    color: Colors.black12)),
                                            padding: const EdgeInsets.all(2),
                                            child: IconButton(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 3,
                                                      horizontal: 6),
                                              color: Colors.white,
                                              onPressed: () {
                                                print('ADD TO SHOP CART');
                                              },
                                              icon: const Icon(
                                                  CupertinoIcons.shopping_cart),
                                            )),
                                      ),
                                    ],
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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

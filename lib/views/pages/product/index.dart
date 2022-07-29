import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/products/product_filter.dart';
import 'package:foodsberrymobile/store/global/products/product_sku.dart';
import 'package:foodsberrymobile/store/global/products/products.dart';
import 'package:foodsberrymobile/store/global/theme.dart';
import 'package:foodsberrymobile/views/pages/home/widgets/title-block.dart';
import 'package:foodsberrymobile/views/pages/product/widgets/counter-product.dart';
import 'package:foodsberrymobile/views/widgets/carousel-slider.dart';
import 'package:foodsberrymobile/views/widgets/counters.dart';
import 'package:tab_container/tab_container.dart';

final currentProductsProvider = Provider<Products>((ref) {
  return Products();
});

final counterProvider = StateNotifierProvider<Counter, int>((ref) {
  return Counter(ref, 6);
});

class Counter extends StateNotifier<int> {
  Counter(this.ref, this.topCount) : super(0);

  final Ref ref;
  final int topCount;

  void increment() {
    // Counter can use the "ref" to read other providers
    final repository = ref.read(counterProvider.notifier);

    repository.state++;
    if (repository.state >= topCount) {
      repository.state = topCount;
    }
  }

  void decrement() {
    // Counter can use the "ref" to read other providers
    final repository = ref.read(counterProvider.notifier);
    repository.state--;
    if (repository.state <= 1) {
      repository.state = 1;
    }
  }
}

class ProductPage extends ConsumerWidget {
  const ProductPage({Key? key, this.dataProduct}) : super(key: key);
  final Products? dataProduct;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int? startCountM = dataProduct!.productInCart ?? 0;
    int? plusLimitM =
        (dataProduct!.rest! / dataProduct!.multiplier!).round() <= 99
            ? (dataProduct!.rest! / dataProduct!.multiplier!).round()
            : 99;
    final ScrollController _controllerOne = ScrollController();
    final StateProvider<List<Sku?>?> counterSKU =
        StateProvider((ref) => dataProduct!.sku);
    late final TabContainerController _controller;
    _controller = TabContainerController(length: 2);
    print('counterSKU ==> $startCountM');
    print(ref.read(counterSKU.state).toString());
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
          title: Text(dataProduct!.name!),
        ),
        body: Consumer(builder: (context, ref, _) {
          final _countSKU = ref.watch(counterSKU.state).state;

          final popularData = ref.watch(listFilterPopular.state).state;
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: FSImageProductCarouselSlider(
                    listItem: dataProduct!.images,
                    aspectRatio: 1.2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 12.0),
                  child: Text(
                    ' ${dataProduct!.name}',
                    style: CustomTextStyle.singleProductTitle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                  child: Text(
                    'Артикул: ${dataProduct!.code}',
                    style: CustomTextStyle.singleProductArticle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                  child: FittedBox(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(241, 87, 34, 1.0),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.zero,
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.zero,
                          ),
                          border: Border.all(
                              color: Color.fromRGBO(241, 87, 34, 1.0))),
                      alignment: Alignment.centerLeft,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text('Личная скидка : 5%',
                            style: CustomTextStyle.cardProductTopStick),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.0, left: 15.0),
                  child: Row(
                    children: const [
                      Text(
                        'Как увеличить скидку? ',
                        style: CustomTextStyle.singleProductBodyBold,
                      ),
                      Text(
                        ' Подробнее',
                        style: CustomTextStyle.singleProductArticle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
/*                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  '${dataProduct!.sku![0].measureInfo}',
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyle.counterProductSKUTitle,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Цена: ${dataProduct!.sku![0].price} руб/${dataProduct!.measure}',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ), */
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: ProductCounter(
                                        ref: ref,
                                        counterSKU: counterSKU,
                                        dataProduct: dataProduct)

                                    /* Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.black12,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(8),
                                                ),
                                                border: Border.all(
                                                    color: Colors.black54)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                TextButton(
                                                  child: const Text(
                                                    '-',
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        color: Colors.black54,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                  ),
                                                  onPressed: () {
                                                    startCountM =
                                                        startCountM! - 1;
                                                    if (startCountM! <= 1) {
                                                      startCountM = 1;
                                                    }
                                                    ref
                                                        .read(counterSKU.state)
                                                        .state = startCountM;

                                                    print('Count minus 2');
                                                  },
                                                ),
                                                Text('$_countSKU'),
                                                TextButton(
                                                  child: const Text(
                                                    '+',
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        color: Colors.black54,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                  ),
                                                  onPressed: () {
                                                    startCountM =
                                                        startCountM! + 1;
                                                    if (startCountM! >=
                                                        plusLimitM) {
                                                      startCountM = plusLimitM;
                                                    }
                                                    ref
                                                        .read(counterSKU.state)
                                                        .state = startCountM;

                                                    print('Count plus 2');
                                                  },
                                                ),
                                              ],
                                            )) */

                                    ),
/*                                 startCountM == 0
                                    ? Expanded(
                                        child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.01),
                                            child: ElevatedButton.icon(
                                              style: ElevatedButton.styleFrom(
                                                primary: const Color.fromARGB(
                                                    255, 125, 183, 40),
                                                alignment: Alignment.center,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0)),
                                                minimumSize:
                                                    const Size(160, 32),
                                              ),
                                              onPressed: () {
                                                print('ADD TO SHOP CART');
                                              },
                                              icon: const Icon(
                                                  CupertinoIcons.shopping_cart),
                                              label: Text(
                                                  dataProduct!.sku![0] == null
                                                      ? '0 р'
                                                      : (dataProduct!.sku![0]
                                                                      .price! *
                                                                  _countSKU!)
                                                              .toString() +
                                                          ' p'),
                                            )),
                                      )
                                    : Expanded(
                                        child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.01),
                                            child: ElevatedButton.icon(
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.black12,
                                                alignment: Alignment.center,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0)),
                                                minimumSize:
                                                    const Size(160, 32),
                                              ),
                                              onPressed: () {
                                                print('ADD TO SHOP CART');
                                              },
                                              icon: const Icon(
                                                  CupertinoIcons.shopping_cart),
                                              label: Text(
                                                  dataProduct!.sku![0] == null
                                                      ? '0 р'
                                                      : (dataProduct!.sku![0]
                                                                      .price! *
                                                                  _countSKU!)
                                                              .toString() +
                                                          ' p'),
                                            )),
                                      ), */
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                    child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 20),
                      child: Image.asset('assets/images/car1.png',
                          width: 50, fit: BoxFit.contain),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Время ближайшей возможной доставки:',
                            maxLines: 2,
                            softWrap: true,
                            style: CustomTextStyle.counterProductSKUTitle,
                          ),
                          Text('Сегодня с 15:00 до 22:00'),
                        ],
                      ),
                    ),
                  ],
                )),
                (dataProduct!.properties.isNotEmpty &&
                        dataProduct!.description! != '')
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            height: 300,
                            child: TabContainer(
                              // color: FSColors.baseFSColor[100],
                              selectedTextStyle: CustomTextStyle.selectTABText,
                              unselectedTextStyle:
                                  CustomTextStyle.unselectTABText,
                              colors: const [
                                Colors.white,
                                Colors.white,
/*                                 FSColors.baseFSColor[100]!,
                                FSColors.fuxiaFSColor[100]!, */
                              ],
                              children: [
                                Container(
                                  padding: EdgeInsets.all(14),
                                  child: Scrollbar(
                                    controller: _controllerOne,
                                    thickness: 4,
                                    //  thumbVisibility: true,
                                    trackVisibility: true,
                                    child: SingleChildScrollView(
                                      controller: ScrollController(),
                                      child: Text(dataProduct!.description!),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(14),
                                  child: dataProduct!.properties.isNotEmpty
                                      ? Scrollbar(
                                          controller: _controllerOne,
                                          thickness: 4,
                                          trackVisibility: true,
                                          child: SingleChildScrollView(
                                            controller: ScrollController(),
                                            child: ListView.builder(
                                              controller: _controllerOne,
                                              shrinkWrap: true,
                                              itemCount: dataProduct!
                                                  .properties.length,
                                              itemBuilder: (context, index) {
                                                return Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      flex: 6,
                                                      child: Text(
                                                        dataProduct!
                                                            .properties[index]
                                                            .name!,
                                                        //overflow: TextOverflow.ellipsis,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 4,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4,
                                                                horizontal: 6),
                                                        child: Text(
                                                          dataProduct!
                                                              .properties[index]
                                                              .value!,
                                                          textAlign:
                                                              TextAlign.end,
                                                          // overflow: TextOverflow.ellipsis,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ),
                                          ),
                                        ) /* ) */
                                      : Container(),
                                ),
                              ],
                              tabs: const [
                                'Описание',
                                'Характеристики',
                              ],
                            )),
                      )
                    : Container(),
                popularData!.isNotEmpty
                    ? const TitleBlock(
                        title: 'Популярные товары',
                        indexTab: 1,
                      )
                    : Container(),
                popularData!.isNotEmpty
                    ? ConstrainedBox(
                        constraints: const BoxConstraints(
                            minWidth: double.infinity, maxHeight: 400),
                        child: FSCarouselSliderFiltered(
                          listItemFilter: popularData,
                          aspectRatio: 3 / 6,
                        ),
                      )
                    : Container(),
                const Padding(
                  padding: EdgeInsets.only(bottom: 40.0),
                ),
              ],
            ),
          );
        }));
  }
}

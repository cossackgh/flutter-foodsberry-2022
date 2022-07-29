import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/products/product_sku.dart';
import 'package:foodsberrymobile/store/global/products/products.dart';
import 'package:foodsberrymobile/store/global/theme.dart';
import 'package:foodsberrymobile/views/widgets/counters.dart';

class ProductCounter extends ConsumerWidget {
  const ProductCounter({Key? key, this.ref, this.counterSKU, this.dataProduct})
      : super(key: key);
  final Products? dataProduct;
  final WidgetRef? ref;
  final StateProvider<List<Sku?>?>? counterSKU;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _countSKU = ref.watch(counterSKU!.state).state;
    //final _countSKU = 1;
    int? startCountM = dataProduct!.productInCart ?? 3;
    int? plusLimitM =
        (dataProduct!.rest! / dataProduct!.multiplier!).round() <= 99
            ? (dataProduct!.rest! / dataProduct!.multiplier!).round()
            : 99;

    int? _localCount;

    return ListView.builder(
        shrinkWrap: true,
        itemCount: dataProduct!.sku!.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        '${dataProduct!.sku![index].measureInfo}',
                        textAlign: TextAlign.center,
                        style: CustomTextStyle.counterProductSKUTitle,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Цена: ${dataProduct!.sku![index].price} руб/${dataProduct!.measure}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              border: Border.all(color: Colors.black54)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                child: const Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.normal),
                                ),
                                onPressed: () {
/*                                   ref.read(counterSKU!.state).state[index] =
                                      (ref.read(counterSKU!.state).state[index]! - 1)!;
                                  if (ref.read(counterSKU!.state).state[index] <= 1) {
                                    ref.read(counterSKU!.state).state[index] = 1;
                                  } */

                                  print('Count minus 2');
                                },
                              ),
                              //Text('$_countSKU'),
                              Text('1'),
                              TextButton(
                                child: const Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.normal),
                                ),
                                onPressed: () {
                                  /*                                  ref.read(counterSKU!.state).state =
                                      ref.read(counterSKU!.state).state! + 1;
                                  startCountM = startCountM! + 1;
                                  if (ref.read(counterSKU!.state).state! >=
                                      plusLimitM) {
                                    ref.read(counterSKU!.state).state =
                                        plusLimitM;
                                  } */

                                  print(
                                      'Count plus 2 => ${ref.read(counterSKU!).toString()}');
                                },
                              ),
                            ],
                          )),
                      /*                 startCountM == 0
                      ? Expanded(
                          child: CountSFW(plusLimit: plusLimitM, startCount: 1))
                      : Expanded(
                          child: CountSFW(
                              plusLimit: plusLimitM, startCount: startCountM)), */
                      startCountM == 0
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
                                              BorderRadius.circular(4.0)),
                                      minimumSize: const Size(160, 32),
                                      //minimumSize: const Size.fromHeight(30),
                                      //minimumSize: const Size.fromWidth(50),
                                    ),
                                    onPressed: () {
                                      print('ADD TO SHOP CART');
                                    },
                                    icon: const Icon(
                                        CupertinoIcons.shopping_cart),
                                    label: Text(dataProduct!.sku![index] == null
                                        ? '0 р'
                                        : (dataProduct!.sku![index].price! * 1)
                                                //_countSKU!)
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
                                              BorderRadius.circular(4.0)),
                                      minimumSize: const Size(160, 32),
                                      //minimumSize: const Size.fromHeight(30),
                                      //minimumSize: const Size.fromWidth(50),
                                    ),
                                    onPressed: () {
                                      print('ADD TO SHOP CART');
                                    },
                                    icon: const Icon(
                                        CupertinoIcons.shopping_cart),
                                    label: Text(dataProduct!.sku![index] == null
                                        ? '0 р'
                                        : (dataProduct!.sku![index].price! * 1)
                                                //_countSKU!)
                                                .toString() +
                                            ' p'),
                                  )),
                            ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}

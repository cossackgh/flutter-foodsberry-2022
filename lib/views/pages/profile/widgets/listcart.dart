import 'package:flutter/material.dart';
import 'package:foodsberrymobile/store/global/cart/cart.dart';

class MockCartWidget extends StatelessWidget {
  const MockCartWidget({Key? key, required this.itemCart}) : super(key: key);
  final Cart? itemCart;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      style: ListTileStyle.drawer,
      leading: Text('# ${itemCart!.id} '),
      title: Text(' Сумма = ${itemCart!.orderSum} р.'),
      onTap: () {
        print('Select a Cart # ${itemCart!.id}');
      },
    );
  }
}

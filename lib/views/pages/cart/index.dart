import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/auth/auth.dart';
import 'package:foodsberrymobile/store/global/user/user.dart';
import 'package:foodsberrymobile/views/widgets/drawer.dart';

final StateProvider<User?> userState = StateProvider((ref) => null);

class CartPage extends ConsumerWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
/*           leading: IconButton(
            icon: const Icon(Icons.chevron_left, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ), */
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
          centerTitle: true,
          title: const Text('КОРЗИНА'),
        ),
        body: Center(child: Consumer(builder: (context, ref, _) {
          final isL = ref.watch(authState.state).state;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isL!
                  ? const Text('SHOPING CART PAGE')
                  : const Text('Вы не залогинены'),
            ],
          );
        })));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/auth/auth.dart';
import 'package:foodsberrymobile/store/global/cart/cart.dart';
import 'package:foodsberrymobile/store/global/list-home-pages/list-widgets.dart';
import 'package:foodsberrymobile/store/global/products/product_filter.dart';
import 'package:foodsberrymobile/store/global/theme.dart';
import 'package:foodsberrymobile/store/global/user/user.dart';
import 'package:foodsberrymobile/views/pages/home/index.dart';
import 'package:foodsberrymobile/views/pages/home/widgets/title-block.dart';
import 'package:foodsberrymobile/views/widgets/carousel-slider.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

final StateProvider<User?> userState = StateProvider((ref) => null);

class CartPage extends ConsumerWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartData = ref.watch(listCartState!.state).state;
    final popularData = ref.watch(listFilterPopular.state).state;
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
          return SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isL!
                  ? cartData!.id != 0
                      ? Column(
                          children: [
                            Text('SHOPING CART PAGE'),
                            popularData!.isNotEmpty
                                ? const TitleBlock(
                                    title: 'Популярные товары',
                                    indexTab: 1,
                                  )
                                : Container(),
                            popularData.isNotEmpty
                                ? ConstrainedBox(
                                    constraints: const BoxConstraints(
                                        minWidth: double.infinity,
                                        maxHeight: 400),
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
                        )
                      : Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 100),
                              child: Column(
                                children: [
                                  Text('В вашей корзине пока нет товаров!'),
                                  Image.asset(
                                    'assets/images/logo.png',
                                    width: 80,
                                    height: 80,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        controllerTabsHome!.index = 0;

/*                                         pushNewScreen(
                                          context,
                                          screen: const HomePage(),
                                          withNavBar:
                                              true, // OPTIONAL VALUE. True by default.
                                          pageTransitionAnimation:
                                              PageTransitionAnimation
                                                  .slideRight, // OPTIONAL
                                        ); */
                                      },
                                      child: Text('Начать покупки')),
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
                                        minWidth: double.infinity,
                                        maxHeight: 400),
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
                        )
                  : const Text('Вы не залогинены'),
            ],
          ));
        })));
  }
}

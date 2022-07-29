import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/auth/auth.dart';
import 'package:foodsberrymobile/store/global/favorites/favorites.dart';
import 'package:foodsberrymobile/store/global/user/user.dart';
import 'package:foodsberrymobile/views/pages/favorites/widgets/card-favorites.dart';
import 'package:foodsberrymobile/views/pages/product/widgets/card-product.dart';

final StateProvider<User?> userState = StateProvider((ref) => null);

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isL = ref.watch(authState.state).state;
    final favoritesData = ref.watch(listFavoritesState.state).state;
    //Products?  selectProduct = (await getDataSingleProduct(1001619)) ;
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
            tooltip: 'Поиск',
            onPressed: () {
              // handle the press
            },
          ),
        ],
        elevation: 4,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('ИЗБРАННОЕ'),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: favoritesData == null ? 0 : favoritesData.length,
          itemBuilder: (BuildContext ctx, index) {
            return CardFavorite(
                dataCardProduct: favoritesData?[index], isFavoritesPage: true);
          }),
    );
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/products/products.dart';

final StateProvider<List<Products>?> listFavoritesState =
    StateProvider((ref) => null);

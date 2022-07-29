//import 'dart:js';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodsberrymobile/store/global/auth/auth.dart';
import 'package:foodsberrymobile/store/global/banners/banners.dart';
import 'package:foodsberrymobile/store/global/cart/cart.dart';
import 'package:foodsberrymobile/store/global/categories/categories.dart';
import 'package:foodsberrymobile/store/global/news/news.dart';
import 'package:foodsberrymobile/store/global/products/product_filter.dart';
import 'package:foodsberrymobile/store/global/products/products.dart';
import 'package:foodsberrymobile/store/global/promotions/promotions.dart';
import 'package:foodsberrymobile/store/global/user/user.dart';
import 'package:foodsberrymobile/transport/api/auth.dart';
import 'package:foodsberrymobile/transport/api/banners.dart';
import 'package:foodsberrymobile/transport/api/cart.dart';
import 'package:foodsberrymobile/transport/api/categories.dart';
import 'package:foodsberrymobile/transport/api/favorites.dart';
import 'package:foodsberrymobile/transport/api/news.dart';
import 'package:foodsberrymobile/transport/api/products.dart';
import 'package:foodsberrymobile/transport/api/promotions.dart';
import 'package:foodsberrymobile/transport/api/user.dart';
import 'package:foodsberrymobile/views/widgets/popups.dart';

class TestHome extends StatelessWidget {
  const TestHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppMetrica.reportEvent('Start DeleteMe Screen');
    return ListView(
      children: <Widget>[
        TextButton.icon(
            label: const Text('Login'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST LOGIN ********************************
              */

              if (kDebugMode) {
                AppMetrica.reportEvent('TEST Login User');
                Map<String, Object> messageAM = {"name": 'TOM'};
                AppMetrica.reportEventWithMap('Map Event', messageAM);
                AppMetrica.reportEventWithJson('Test Login User With Json',
                    '{"name": "Dmitro", "email": "cossack@gmail.com"}');
              }
              if (kDebugMode) {
                print('tokenBox before login =>' + tokenBox.toString());
              }
              AuthHive getToken =
                  (await loginFS('cossack_box@mail.ru', 'Qwerty12345'));
              if (kDebugMode) {
                print('tokenLogin =>' + getToken.toString());
              }
            }),
        TextButton.icon(
            label: const Text('Logout'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST LOGOUT ********************************
              */

              logoutFS();
            }),
        TextButton.icon(
            label: const Text('Данные пользователя'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST GET USER DATA ********************************
              */
              user = (await getUser());
              if (user == null) {
                showBasicsFlash(
                    context: context,
                    isError: true,
                    duration: const Duration(seconds: 2),
                    message: 'NOT logged');
              } else {
                UserHive userData = UserHive(
                    user!.id,
                    user!.username,
                    user!.email,
                    user!.phone,
                    user!.workPhone,
                    user!.firstName,
                    user!.lastName,
                    user!.middleName,
                    user!.avatar,
                    user!.sex,
                    null);
                userBox!.put('keyUser', userData);
              }
              if (kDebugMode) {
                print('user => ${user.toString()}');
              }
            }),
        TextButton.icon(
            label: const Text('Корзина'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST GET SHOP CART ********************************
              */
              cart = (await getCart())!;
              if (kDebugMode) {
                print('API Shop Cart => ${cart!}');
              }
            }),
        TextButton.icon(
            label: const Text('Добавить в Корзину'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST ADD TO SHOP CART ********************************
              */
              cartRecive = (await addToCart(1002576, 4))!;
              if (kDebugMode) {
                print('API Shop Cart => ${cartRecive!}');
              }
            }),
        TextButton.icon(
            label: const Text('Удалить из Корзины'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST DELETE ITEM FROM SHOP CART ********************************
              */
              bool? _deleteItemFromCart = (await deleteItemFromCart(1002576));
              if (kDebugMode) {
                print(
                    'API Delet Item from Shop Cart => ${_deleteItemFromCart!}');
              }
            }),
        TextButton.icon(
            label: const Text('Удалить Корзину'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST DELETE SHOP CART ********************************
              */

              if (cart != null) {
                bool? _deleteCart = (await deleteCart(cart!.id));
                if (kDebugMode) {
                  print('API Delet  Cart => ${_deleteCart!}');
                }
              }
            }),
        TextButton.icon(
            label: const Text('Все товары'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST GET ALL PRODUCTS ********************************
              */
              allProducts = (await getDataAllProducts())!;
              if (kDebugMode) {
                print('API Products [3] Title => ${allProducts![3]}' +
                    allProducts![3].name.toString());
              }
            }),
        TextButton.icon(
            label: const Text('Один товар'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST GET SINGLE PRODUCTS ********************************
              */
              selectProduct = (await getDataSingleProduct(1001221));
              if (kDebugMode) {
                print('API Products getDataSingleProduct => $selectProduct');
              }
            }),
        TextButton.icon(
            label: const Text('Фильтр товаров'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST GET SINGLE PRODUCTS ********************************
              */

              filterProduct = FilterProducts(
                  page: 3, pageSize: 15, priceMin: 600.00, priceMax: 3000.00);
              filteredProducts = (await getDataFilterProducts(filterProduct))!;
              if (kDebugMode) {
                print('API filteredProducts => ${filteredProducts![0]}');
              }
            }),
        TextButton.icon(
            label: const Text('Все Новости'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST GET NEWS ********************************
              */
              allNews = (await getDataNews())!;
              if (kDebugMode) {
                print(
                    'API ALLNEWS [0] Title =>' + allNews![0].title.toString());
              }
            }),
        TextButton.icon(
            label: const Text('Одна Новость'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST GET SINGLE NEWS ********************************
              */
              currentNews = (await getDataSingleNews(241))!;
              if (kDebugMode) {
                print('API SINGLE NEWS 2 =>' + currentNews!.toString());
              }
            }),
        TextButton.icon(
            label: const Text('Все Баннеры'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST GET BANNERS ********************************
              */

              allBanners = (await getDataBanners())!;
              if (kDebugMode) {
                print('API ALLBANNERS [0] Image =>' +
                    allBanners![0].image.toString());
              }
            }),
        TextButton.icon(
            label: const Text('Все Акции'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST GET PROMOTIONS ********************************
              */

              allPromotions = (await getDataPromotions())!;
              if (kDebugMode) {
                print('API ALLPROMOTIONS [0] Image =>' +
                    allPromotions![0].image.toString());
              }
            }),
        TextButton.icon(
            label: const Text('Акция №6'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST GET CURRENT PROMOTION ********************************
              */

              currentPromotion = (await getDataCurrentPromotion(6))!;
              if (kDebugMode) {
                print('API currentPromotion (6) =>' +
                    currentPromotion.toString());
              }
            }),
        TextButton.icon(
            label: const Text('Все Категории'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST GET ALL CATEGORIES ********************************
              */

              allCategories = (await getDataCategories())!;
              if (kDebugMode) {
                print('API Categories [0] Title =>' +
                    allCategories![3].name.toString());
              }
            }),
        TextButton.icon(
            label: const Text('Избранное'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST GET FAVORITES PRODUCTS ********************************
              */

              allFavoritesProducts = (await getDataFavoriteProducts())!;
              if (kDebugMode) {
                print('API allFavoritesProducts  =>' +
                    allFavoritesProducts.toString());
              }
            }),
        TextButton.icon(
            label: const Text('Добавить в Избранное'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST ADD FAVORITES PRODUCTS ********************************
              */

              allFavoritesProducts = (await addFavoriteProducts(
                  1001296))!; // Обновляем список избранных продуктов
              if (kDebugMode) {
                print('API addFavoritesProducts  =>' +
                    allFavoritesProducts.toString());
              }
            }),
        TextButton.icon(
            label: const Text('Удалить из Избранное'),
            icon: const Icon(Icons.web),
            onPressed: () async {
              /*
              * TEST DELETE FAVORITES PRODUCTS ********************************
              */

              allFavoritesProducts = (await deleteFavoriteProducts(
                  1001296))!; // Обновляем список избранных продуктов
              if (kDebugMode) {
                print('API addFavoritesProducts  =>' +
                    allFavoritesProducts.toString());
              }
            }),
      ],
    );
  }
}

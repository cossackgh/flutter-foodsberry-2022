// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

const String CoreUrl =
    kDebugMode ? "https://dev-build.foodsberry.ru" : "https://foodsberry.ru";
/* const String CoreUrl =
    kDebugMode ? "https://foodsberry.ru" : "https://foodsberry.ru"; */

const String CommonPath = "/api/rest/v3";

class ApiRoutes {
  final String orders;
  final String catalog;
  final String login;
  final String favorite;
  final String cart;
  final String updateCartItem;
  final String orderCreate;
  final String cartClean;
  final String addToCart;
  final String promocode;
  final String promotions;
  final String news;
  final String loginBySession;
  final String loginWithApple;
  final String resetPW;
  final String checkEmail;
  final String registration;
  final String logout;
  final String setDeviceInfo;
  final String categories;
  final String address;
  final String order;
  final String repeatOrder;
  final String checkPaymentStatus;
  final String minMaxPrices;
  final String count;
  final String products;
  final String productsFiltered;
  final String addMultipleToFavorite;
  final String banners;
  final String checkNewProducts;
  final String stories;
  final String user;
  final String setPassword;
  final String setAvatar;
  final String setPhone;
  ApiRoutes({
    required this.orders,
    required this.catalog,
    required this.login,
    required this.favorite,
    required this.cart,
    required this.updateCartItem,
    required this.orderCreate,
    required this.cartClean,
    required this.addToCart,
    required this.promocode,
    required this.promotions,
    required this.news,
    required this.loginBySession,
    required this.loginWithApple,
    required this.resetPW,
    required this.checkEmail,
    required this.registration,
    required this.logout,
    required this.setDeviceInfo,
    required this.categories,
    required this.address,
    required this.order,
    required this.repeatOrder,
    required this.checkPaymentStatus,
    required this.minMaxPrices,
    required this.count,
    required this.products,
    required this.productsFiltered,
    required this.addMultipleToFavorite,
    required this.banners,
    required this.checkNewProducts,
    required this.stories,
    required this.user,
    required this.setPassword,
    required this.setAvatar,
    required this.setPhone,
  });

  ApiRoutes copyWith({
    String? orders,
    String? catalog,
    String? login,
    String? favorite,
    String? cart,
    String? updateCartItem,
    String? orderCreate,
    String? cartClean,
    String? addToCart,
    String? promocode,
    String? promotions,
    String? news,
    String? loginBySession,
    String? loginWithApple,
    String? resetPW,
    String? checkEmail,
    String? registration,
    String? logout,
    String? setDeviceInfo,
    String? categories,
    String? address,
    String? order,
    String? repeatOrder,
    String? checkPaymentStatus,
    String? minMaxPrices,
    String? count,
    String? products,
    String? productsFiltered,
    String? addMultipleToFavorite,
    String? banners,
    String? checkNewProducts,
    String? stories,
    String? user,
    String? setPassword,
    String? setAvatar,
    String? setPhone,
  }) {
    return ApiRoutes(
      orders: orders ?? this.orders,
      catalog: catalog ?? this.catalog,
      login: login ?? this.login,
      favorite: favorite ?? this.favorite,
      cart: cart ?? this.cart,
      updateCartItem: updateCartItem ?? this.updateCartItem,
      orderCreate: orderCreate ?? this.orderCreate,
      cartClean: cartClean ?? this.cartClean,
      addToCart: addToCart ?? this.addToCart,
      promocode: promocode ?? this.promocode,
      promotions: promotions ?? this.promotions,
      news: news ?? this.news,
      loginBySession: loginBySession ?? this.loginBySession,
      loginWithApple: loginWithApple ?? this.loginWithApple,
      resetPW: resetPW ?? this.resetPW,
      checkEmail: checkEmail ?? this.checkEmail,
      registration: registration ?? this.registration,
      logout: logout ?? this.logout,
      setDeviceInfo: setDeviceInfo ?? this.setDeviceInfo,
      categories: categories ?? this.categories,
      address: address ?? this.address,
      order: order ?? this.order,
      repeatOrder: repeatOrder ?? this.repeatOrder,
      checkPaymentStatus: checkPaymentStatus ?? this.checkPaymentStatus,
      minMaxPrices: minMaxPrices ?? this.minMaxPrices,
      count: count ?? this.count,
      products: products ?? this.products,
      productsFiltered: productsFiltered ?? this.productsFiltered,
      addMultipleToFavorite:
          addMultipleToFavorite ?? this.addMultipleToFavorite,
      banners: banners ?? this.banners,
      checkNewProducts: checkNewProducts ?? this.checkNewProducts,
      stories: stories ?? this.stories,
      user: user ?? this.user,
      setPassword: setPassword ?? this.setPassword,
      setAvatar: setAvatar ?? this.setAvatar,
      setPhone: setPhone ?? this.setPhone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orders': orders,
      'catalog': catalog,
      'login': login,
      'favorite': favorite,
      'cart': cart,
      'updateCartItem': updateCartItem,
      'orderCreate': orderCreate,
      'cartClean': cartClean,
      'addToCart': addToCart,
      'promocode': promocode,
      'promotions': promotions,
      'news': news,
      'loginBySession': loginBySession,
      'loginWithApple': loginWithApple,
      'resetPW': resetPW,
      'checkEmail': checkEmail,
      'registration': registration,
      'logout': logout,
      'setDeviceInfo': setDeviceInfo,
      'categories': categories,
      'address': address,
      'order': order,
      'repeatOrder': repeatOrder,
      'checkPaymentStatus': checkPaymentStatus,
      'minMaxPrices': minMaxPrices,
      'count': count,
      'products': products,
      'productsFiltered': productsFiltered,
      'addMultipleToFavorite': addMultipleToFavorite,
      'banners': banners,
      'checkNewProducts': checkNewProducts,
      'stories': stories,
      'user': user,
      'setPassword': setPassword,
      'setAvatar': setAvatar,
      'setPhone': setPhone,
    };
  }

  factory ApiRoutes.fromMap(Map<String, dynamic> map) {
    return ApiRoutes(
      orders: map['orders'] as String,
      catalog: map['catalog'] as String,
      login: map['login'] as String,
      favorite: map['favorite'] as String,
      cart: map['cart'] as String,
      updateCartItem: map['updateCartItem'] as String,
      orderCreate: map['orderCreate'] as String,
      cartClean: map['cartClean'] as String,
      addToCart: map['addToCart'] as String,
      promocode: map['promocode'] as String,
      promotions: map['promotions'] as String,
      news: map['news'] as String,
      loginBySession: map['loginBySession'] as String,
      loginWithApple: map['loginWithApple'] as String,
      resetPW: map['resetPW'] as String,
      checkEmail: map['checkEmail'] as String,
      registration: map['registration'] as String,
      logout: map['logout'] as String,
      setDeviceInfo: map['setDeviceInfo'] as String,
      categories: map['categories'] as String,
      address: map['address'] as String,
      order: map['order'] as String,
      repeatOrder: map['repeatOrder'] as String,
      checkPaymentStatus: map['checkPaymentStatus'] as String,
      minMaxPrices: map['minMaxPrices'] as String,
      count: map['count'] as String,
      products: map['products'] as String,
      productsFiltered: map['productsFiltered'] as String,
      addMultipleToFavorite: map['addMultipleToFavorite'] as String,
      banners: map['banners'] as String,
      checkNewProducts: map['checkNewProducts'] as String,
      stories: map['stories'] as String,
      user: map['user'] as String,
      setPassword: map['setPassword'] as String,
      setAvatar: map['setAvatar'] as String,
      setPhone: map['setPhone'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ApiRoutes.fromJson(String source) =>
      ApiRoutes.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ApiRoutes(orders: $orders, catalog: $catalog, login: $login, favorite: $favorite, cart: $cart, updateCartItem: $updateCartItem, orderCreate: $orderCreate, cartClean: $cartClean, addToCart: $addToCart, promocode: $promocode, promotions: $promotions, news: $news, loginBySession: $loginBySession, loginWithApple: $loginWithApple, resetPW: $resetPW, checkEmail: $checkEmail, registration: $registration, logout: $logout, setDeviceInfo: $setDeviceInfo, categories: $categories, address: $address, order: $order, repeatOrder: $repeatOrder, checkPaymentStatus: $checkPaymentStatus, minMaxPrices: $minMaxPrices, count: $count, products: $products, productsFiltered: $productsFiltered, addMultipleToFavorite: $addMultipleToFavorite, banners: $banners, checkNewProducts: $checkNewProducts, stories: $stories, user: $user, setPassword: $setPassword, setAvatar: $setAvatar, setPhone: $setPhone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ApiRoutes &&
        other.orders == orders &&
        other.catalog == catalog &&
        other.login == login &&
        other.favorite == favorite &&
        other.cart == cart &&
        other.updateCartItem == updateCartItem &&
        other.orderCreate == orderCreate &&
        other.cartClean == cartClean &&
        other.addToCart == addToCart &&
        other.promocode == promocode &&
        other.promotions == promotions &&
        other.news == news &&
        other.loginBySession == loginBySession &&
        other.loginWithApple == loginWithApple &&
        other.resetPW == resetPW &&
        other.checkEmail == checkEmail &&
        other.registration == registration &&
        other.logout == logout &&
        other.setDeviceInfo == setDeviceInfo &&
        other.categories == categories &&
        other.address == address &&
        other.order == order &&
        other.repeatOrder == repeatOrder &&
        other.checkPaymentStatus == checkPaymentStatus &&
        other.minMaxPrices == minMaxPrices &&
        other.count == count &&
        other.products == products &&
        other.productsFiltered == productsFiltered &&
        other.addMultipleToFavorite == addMultipleToFavorite &&
        other.banners == banners &&
        other.checkNewProducts == checkNewProducts &&
        other.stories == stories &&
        other.user == user &&
        other.setPassword == setPassword &&
        other.setAvatar == setAvatar &&
        other.setPhone == setPhone;
  }

  @override
  int get hashCode {
    return orders.hashCode ^
        catalog.hashCode ^
        login.hashCode ^
        favorite.hashCode ^
        cart.hashCode ^
        updateCartItem.hashCode ^
        orderCreate.hashCode ^
        cartClean.hashCode ^
        addToCart.hashCode ^
        promocode.hashCode ^
        promotions.hashCode ^
        news.hashCode ^
        loginBySession.hashCode ^
        loginWithApple.hashCode ^
        resetPW.hashCode ^
        checkEmail.hashCode ^
        registration.hashCode ^
        logout.hashCode ^
        setDeviceInfo.hashCode ^
        categories.hashCode ^
        address.hashCode ^
        order.hashCode ^
        repeatOrder.hashCode ^
        checkPaymentStatus.hashCode ^
        minMaxPrices.hashCode ^
        count.hashCode ^
        products.hashCode ^
        productsFiltered.hashCode ^
        addMultipleToFavorite.hashCode ^
        banners.hashCode ^
        checkNewProducts.hashCode ^
        stories.hashCode ^
        user.hashCode ^
        setPassword.hashCode ^
        setAvatar.hashCode ^
        setPhone.hashCode;
  }
}

final ApiRoutes gApi = ApiRoutes(
  orders: '/orders/',
  catalog: '/catalog/',
  login: '/login/',
  //favorite: '/favorite-product/',
  favorite: '/product/favorites/',
  cart: '/cart/',
  //promotions: '/promotions/',
  promotions: '/promo_currently/',
  news: '/news/',
  addToCart: '/cart/modify/',
  cartClean: '/cart/clean/',
  orderCreate: '/order_create/',
  promocode: '/order/check_promocode/',
  updateCartItem: '/order_items_update/',
  loginBySession: '/session_auth/',
  loginWithApple: '/apple/auth/check/',
  resetPW: '/password/reset/',
  checkEmail: '/wizard/check/user/',
  registration: '/wizard/registration/',
  logout: '/logout/',
  setDeviceInfo: '/customer_device_info/',
  categories: '/categories/fast_category_list/',
  address: '/4_1/rs/suggest/address',
  order: '/order/detail/',
  repeatOrder: '/order/to/cart/',
  checkPaymentStatus: '/order/check/status/',
  minMaxPrices: '/products/prices/',
  count: '/products_detailed/count/',
  products: '/products_detailed/',
  productsFiltered: '/products_detailed/list?',
  addMultipleToFavorite: '/product/favorites/list/create/',
  banners: '/banners/',
  checkNewProducts: '/products_detailed/check_new_product/',
  stories: '/stories/',
  user: '/account/fast/me/',
  setPassword: '/password/change/',
  setAvatar: '/account/avatar/load/',
  setPhone: '/set_user_phone/',
);

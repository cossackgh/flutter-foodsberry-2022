import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:foodsberrymobile/views/pages/cart/index.dart';
import 'package:foodsberrymobile/views/pages/categories/index.dart';
import 'package:foodsberrymobile/views/pages/favorites/index.dart';
import 'package:foodsberrymobile/views/pages/home/index.dart';
import 'package:foodsberrymobile/views/pages/profile/index.dart';

List<Widget> tabScreens() {
  return [
    const HomePage(),
    const CategoriesPage(),
    const CartPage(),
    const FavoritesPage(),
    ProfilePage(),
  ];
}

PersistentTabController? controllerTabsHome =
    PersistentTabController(initialIndex: 0);

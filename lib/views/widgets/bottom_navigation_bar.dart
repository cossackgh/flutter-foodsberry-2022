import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/auth/auth.dart';
import 'package:foodsberrymobile/store/global/bottom-nav/bottom_nav.dart';
import 'package:foodsberrymobile/store/global/theme.dart';
import 'package:foodsberrymobile/utils/chek_login.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BottomNav extends ConsumerWidget {
  const BottomNav({Key? key}) : super(key: key);

  void _onItemTapped(int index) {
    selectedIndex = index;
    if (kDebugMode) {
      print('Index Navigation: ' + selectedIndex.toString());
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(builder: (context, ref, _) {
      //  final userData = ref.watch(userState.state).state;
      final isL = ref.watch(authState.state).state;

      print('isl BOTTOM NAVIGATION ===> $isL');
      return BottomNavigationBar(
        iconSize: 18,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedFontSize: 12,
        backgroundColor: FSColors.baseFSColor[400],
        //  fixedColor: Colors.black,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
              color: isL != null && isL ? FSColors.baseFSColor : Colors.red,
            ),
            label: 'Профиль--',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Избранное',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Корзина',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Корзина',
          )
        ],
        currentIndex: selectedIndex!,
        selectedItemColor: FSColors.baseFSColor[900],
        onTap: _onItemTapped,
      );
    });
  }
}

List<PersistentBottomNavBarItem> tabBarsItems(bool issL) {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.home),
      title: ("Home"),
      activeColorPrimary: FSColors.baseFSColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.bag),
      title: ("Каталог"),
      activeColorPrimary: FSColors.baseFSColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.cart),
      title: ("Корзина"),
      activeColorPrimary: issL ? FSColors.baseFSColor : Colors.red,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.heart),
      title: ("Избранное"),
      activeColorPrimary: issL ? FSColors.baseFSColor : Colors.red,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.person_crop_circle),
      title: ("Профиль"),
      activeColorPrimary: issL ? FSColors.baseFSColor : Colors.red,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}

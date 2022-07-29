import 'dart:io';
import 'package:device_preview/device_preview.dart';
import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/Metrica/app_metrica.dart';
import 'package:foodsberrymobile/store/global/auth/auth.dart';
import 'package:foodsberrymobile/store/global/banners/banners.dart';
import 'package:foodsberrymobile/store/global/bottom-nav/bottom_nav.dart';
import 'package:foodsberrymobile/store/global/cart/cart.dart';
import 'package:foodsberrymobile/store/global/favorites/favorites.dart';
import 'package:foodsberrymobile/store/global/list-home-pages/list-widgets.dart';
import 'package:foodsberrymobile/store/global/products/product_filter.dart';
import 'package:foodsberrymobile/store/global/theme.dart';
import 'package:foodsberrymobile/store/global/user/user.dart';
import 'package:foodsberrymobile/transport/api/banners.dart';
import 'package:foodsberrymobile/transport/api/cart.dart';
import 'package:foodsberrymobile/transport/api/favorites.dart';
import 'package:foodsberrymobile/transport/api/filtered.dart';
import 'package:foodsberrymobile/transport/api/products.dart';
import 'package:foodsberrymobile/transport/api/user.dart';
import 'package:foodsberrymobile/utils/chek_login.dart';
import 'package:foodsberrymobile/views/pages/product/index.dart';
import 'package:foodsberrymobile/views/widgets/bottom_navigation_bar.dart';
import 'package:foodsberrymobile/views/widgets/popups.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:flash/flash.dart';

import 'transport/api/utils.dart';
//part 'main.g.dart';

Future<void> main() async {
  AppMetrica.runZoneGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    AppMetrica.activate(configAppMetrica);
    await Hive.initFlutter();
    Hive.registerAdapter(UserHiveAdapter());
    Hive.registerAdapter(AuthHiveAdapter());

    /* await Hive.openBox<UserHive>(userBoxName);
    await Hive.openBox<AuthHive>(tokenBoxName); */
    try {
      Box<UserHive> data1 = await Hive.openBox<UserHive>(userBoxName);
      Box<AuthHive> data2 = await Hive.openBox<AuthHive>(tokenBoxName);
    } catch (error) {
      print('Error: ' + error.toString());
      Hive.deleteBoxFromDisk(tokenBoxName);
      Box<UserHive> dataE1 = await Hive.openBox<UserHive>(userBoxName);
      Box<AuthHive> dataE2 = await Hive.openBox<AuthHive>(tokenBoxName);
      // await Hive.openBox("boxName");

    }
/*     try {
      await Hive.openBox<UserHive>(userBoxName);

      await Hive.openBox<AuthHive>(tokenBoxName);
    } catch (e) {
      print('Error: ' + e.toString());
    } */

    //runApp(const MyApp());
    runApp(
/*       const DevicePreview(
        enabled: kIsWeb, builder: (BuildContext context) {  },        
      ), */
      ProviderScope(child: MyApp()),
    );
  });
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'ФУДСБЕРРИ (с)',
      theme: FSTheme,

      locale: DevicePreview.locale(context),
/*       title: 'Flash Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), */
      //home: const MyHomePage(),
    );

    //  home: const MyHomePage(title: 'ФУДСБЕРРИ'),
    //);
  }

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const RootPage(),
      ),
      /* GoRoute(
        path: '/product/:idproduct',
        builder: (context, state) =>
            ProductPage(dataProduct: state.params['idproduct']),
      ), */
    ],
  );
}

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, _) {
        var child = _;
        final navigatorKey = child!.key as GlobalKey<NavigatorState>;
        child = DevicePreview.appBuilder(context, _);
        final theme = Theme.of(context);
        final isThemeDark = theme.brightness == Brightness.dark;
        // Wrap with toast.
        child = Toast(child: child, navigatorKey: navigatorKey);
        // Wrap with flash theme
        child = FlashTheme(
          child: child,
          flashBarTheme: isThemeDark
              ? const FlashBarThemeData.dark()
              : const FlashBarThemeData.light(),
          flashDialogTheme: const FlashDialogThemeData(),
        );
        return child;
      },
      theme: FSTheme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  void showPopUp() {
    print('Show POPUP ANYWHERE');
  }

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

/*   @override
  State<MyHomePage> createState() => _MyHomePageState();
} */

class _MyHomePageState extends ConsumerState<MyHomePage> {
/*   int _counter = 0;

  void _incrementCounter() async {
    setState(() {
      _counter++;
    });
  } */

  Future<void> getCartHome() async {
    cart = await getCart();

    ref.read(userState.state).state = await getUser();
    ref.read(authState.state).state = isLogin();
    if (cart == null) {
      showBasicsFlash(
          context: context,
          isError: true,
          duration: const Duration(seconds: 3),
          message: 'NOT logged');
    } else if (cart!.errorDio!.isError == true) {
      showBasicsFlash(
          context: context,
          isError: true,
          duration: const Duration(seconds: 3),
          message: cart!.errorDio!.errorMessage);
      if (kDebugMode) {
        print('START APP Shop Cart ERROR => ${cart!.errorDio!.errorMessage}');
      }
    } else {
      if (kDebugMode) {
        print('START APP Shop Cart => ${cart!}');
      }
    }
  }

  void showBasicsFlashHome({
    Duration? duration,
    flashStyle = FlashBehavior.floating,
  }) {
    showFlash(
      context: context,
      duration: duration,
      builder: (context, controller) {
        return Flash(
          controller: controller,
          behavior: flashStyle,
          position: FlashPosition.bottom,
          boxShadows: kElevationToShadow[4],
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          child: FlashBar(
            content: Text('This is a basic flash'),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();

    print('userBox = $userBox');

    () async {
/*       await Hive.openBox<UserHive>(userBoxName);
      await Hive.openBox<AuthHive>(tokenBoxName); */
      tokenBox = Hive.box(tokenBoxName);
      userBox = Hive.box(userBoxName);
      await getCartHome();
      ref.read(listFavoritesState.state).state =
          await getDataFavoriteProducts();
      ref.read(listFilterPopular.state).state = (await getDataFilteredProducts(
          FilterProducts(page: 1, pageSize: 30, recomPopular: true)))!;
      ref.read(listFilterLike.state).state = (await getDataFilteredProducts(
          FilterProducts(page: 1, pageSize: 30, recomLike: true)))!;
/*       ref.read(listFilterSale.state).state = (await getDataFilterProducts(
          FilterProducts(page: 1, pageSize: 30, recomSale: true)))!;
      ref.read(listFilterLook.state).state = (await getDataFilterProducts(
          FilterProducts(page: 1, pageSize: 30, recomLook: true)))!; */
      ref.read(listBannersState.state).state = await getDataBanners();

      print('object');
    }();
  }

  @override
  Widget build(BuildContext context) {
    bool _isTest = true;

    var _tempHome = Center(
        child: Column(
      children: [
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          'HI',
          style: Theme.of(context).textTheme.headline4,
        ),
        Platform.isIOS
            ? SignInWithAppleButton(
                onPressed: () async {
                  final credential = await SignInWithApple.getAppleIDCredential(
                    scopes: [
                      AppleIDAuthorizationScopes.email,
                      AppleIDAuthorizationScopes.fullName,
                    ],
                    /*                   webAuthenticationOptions: WebAuthenticationOptions(
                    // TODO: Set the `clientId` and `redirectUri` arguments to the values you entered in the Apple Developer portal during the setup
                    clientId:
                        //'de.lunaone.flutter.signinwithappleexample.service',
                        'com.foodsberrymobile', //!!!! ERROR Change to valid clientId and redirectUri

                    redirectUri:
                        // For web your redirect URI needs to be the host of the "current page",
                        // while for Android you will be using the API server that redirects back into your app via a deep link

                        Uri.parse(
                      'https://flutter-sign-in-with-apple-example.glitch.me/callbacks/sign_in_with_apple',
                    ),
                  ),
                  // TODO: Remove these if you have no need for them
                  nonce: 'example-nonce',
                  state: 'example-state', */
                  );

                  // ignore: avoid_print
                  print(credential);

                  // This is the endpoint that will convert an authorization code obtained
                  // via Sign in with Apple into a session in your system
                  final signInWithAppleEndpoint = Uri(
                    scheme: 'https',
                    host: 'flutter-sign-in-with-apple-example.glitch.me',
                    path: '/sign_in_with_apple',
                    queryParameters: <String, String>{
                      'code': credential.authorizationCode,
                      if (credential.givenName != null)
                        'firstName': credential.givenName!,
                      if (credential.familyName != null)
                        'lastName': credential.familyName!,
                      'useBundleId':
                          !kIsWeb && (Platform.isIOS || Platform.isMacOS)
                              ? 'true'
                              : 'false',
                      if (credential.state != null) 'state': credential.state!,
                    },
                  );

                  final session = await dio.post(
                    signInWithAppleEndpoint.toString(),
                  );

                  print('Session => ' + session.toString());
                },
              )
            : const Text('Android')
      ],
    ));

    return Scaffold(body: Consumer(builder: (context, ref, _) {
      final userData = ref.watch(userState.state).state;
      final bottomNavData = ref.watch(bottomNavState.state).state;
      final isL = ref.watch(authState.state).state;
      final listFilterLikeDataIS = ref.watch(listFilterLike.state).state;
      return PersistentTabView(
        context,
        controller: controllerTabsHome,
        screens: tabScreens(),
        items: tabBarsItems(isL!),
        onItemSelected: (index) async {
          //  ref.read(bottomNavState.state).state = index;
          switch (index) {
            case 0:
              ref.read(listFavoritesState.state).state =
                  await getDataFavoriteProducts();
              break;
            case 3:
              ref.read(listFavoritesState.state).state =
                  await getDataFavoriteProducts();
              break;
            default:
          }
          if (kDebugMode) {
            print('Selected: ' + index.toString());
            print('isLogin(): ' + isLogin().toString());
          }
          setState(() {
            controllerTabsHome!.index = index;
          });
        },
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style1, // Choose the nav bar style with this property.
      );
    })

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

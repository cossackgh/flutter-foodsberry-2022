import 'package:flutter/material.dart';

class FSColors {
  static const MaterialColor baseFSColor = MaterialColor(
    0xFF7DB728,
    //0xFFAA9638,#
    <int, Color>{
      50: Color(0x117DB728),
      100: Color(0x227DB728),
      200: Color(0x337DB728),
      300: Color(0x557DB728),
      400: Color(0x777DB728),
      500: Color(0x997DB728),
      600: Color(0xCC7DB728),
      700: Color(0xFF7DB728),
      800: Color(0xFF7DB728),
      900: Color(0xFF5D6728),
    },
  );
  static const MaterialColor fuxiaFSColor = MaterialColor(
    0xFFB1117F,
    <int, Color>{
      50: Color(0x11B1117F),
      100: Color(0x22B1117F),
      200: Color(0x33B1117F),
      300: Color(0x55B1117F),
      400: Color(0x77B1117F),
      500: Color(0x99B1117F),
      600: Color(0xCCB1117F),
      700: Color(0xFFB1117F),
      800: Color(0xFFB1117F),
      900: Color(0xFFB1117F),
    },
  );
}

ThemeData FSTheme = ThemeData(
  // Define the default brightness and colors.
  brightness: Brightness.light,
  primaryColor: FSColors.baseFSColor,
  backgroundColor: Colors.white,

  // Define the default font family.
  fontFamily: 'Montserrat',
  colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: FSColors.baseFSColor,
      onPrimary: FSColors.baseFSColor,
      secondary: FSColors.baseFSColor,
      onSecondary: FSColors.baseFSColor[700]!,
      error: Colors.red[700]!,
      onError: Colors.red,
      background: Colors.white,
      onBackground: Colors.amber,
      surface: Colors.brown,
      onSurface: Colors.black54),
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.deepPurple,
      // This will be applied to the "back" icon
      iconTheme: IconThemeData(color: Colors.black54),
      // This will be applied to the action icon buttons that locates on the right side
      actionsIconTheme: IconThemeData(color: Colors.amber),
      centerTitle: false,
      elevation: 15,
      titleTextStyle: TextStyle(
        fontSize: 18.0,
        color: Colors.black54,
        fontWeight: FontWeight.bold,
      )),
  elevatedButtonTheme: ElevatedButtonThemeData(
    //style: ElevatedButton.styleFrom(onPrimary: Colors.white)
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(FSColors.baseFSColor),
      foregroundColor:
          MaterialStateProperty.all<Color>(Colors.white), //actual text color
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          //this determines the text style of the text displayed on buttons
          fontSize: 14,
          fontFamily: 'Lato',
        ),
      ),
      enableFeedback: true,
      //minimumSize: ,
    ),
  ),
  // Define the default `TextTheme`. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline2: TextStyle(
        fontSize: 22.0, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
    subtitle1:
        TextStyle(fontSize: 12.0, color: Colors.black38, fontFamily: 'Roboto'),
/*     titleMedium: const TextStyle(
        fontSize: 18.0, color: Colors.black54, fontFamily: 'Roboto'), */
    headline5: TextStyle(fontSize: 18.0, fontStyle: FontStyle.normal),
    headline6: TextStyle(fontSize: 22.0, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Roboto'),
  ),
);

class CustomTextStyle {
  static const TextStyle cardProductPrice = TextStyle(
    fontSize: 14,
    color: FSColors.baseFSColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle cardProductPriceMore1 = TextStyle(
    fontSize: 14,
    color: FSColors.fuxiaFSColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle cardProductFullPrice = TextStyle(
    fontSize: 14,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle cardProductPriceOld = TextStyle(
      fontSize: 12,
      color: Colors.black45,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.lineThrough);
  static const TextStyle cardProductMeasure = TextStyle(
      fontSize: 10, color: Colors.black, fontWeight: FontWeight.normal);
  static const TextStyle cardProductStars = TextStyle(
    fontSize: 18,
    color: Color.fromARGB(255, 0, 0, 0),
    fontWeight: FontWeight.bold,
  );
  static const TextStyle cardProductTopStick = TextStyle(
    fontSize: 12,
    color: Color.fromARGB(255, 255, 255, 255),
    fontWeight: FontWeight.bold,
  );
  static const TextStyle cardProductTitle = TextStyle(
    fontSize: 12,
    color: Color.fromARGB(255, 0, 0, 0),
    fontWeight: FontWeight.bold,
  );

  static const TextStyle sectionTitle = TextStyle(
    fontSize: 12,
    color: Color.fromARGB(255, 33, 150, 56),
    fontWeight: FontWeight.bold,
  );
  static const TextStyle sectionSlug = TextStyle(
    fontSize: 10,
    color: Color.fromARGB(255, 33, 150, 56),
    fontWeight: FontWeight.w500,
  );
  static const TextStyle textSKUButton = TextStyle(
    fontSize: 11,
    color: FSColors.baseFSColor,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle textSKUCard = TextStyle(
    fontSize: 11,
    color: FSColors.fuxiaFSColor,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle dateNewsCard = TextStyle(
    fontSize: 11,
    color: Color.fromARGB(255, 125, 125, 125),
    fontWeight: FontWeight.normal,
  );
  static const TextStyle drawerTitle = TextStyle(
    fontSize: 18,
    color: Color.fromARGB(255, 125, 125, 125),
    fontWeight: FontWeight.bold,
  );
  static const TextStyle drawerItemsTitle = TextStyle(
    fontSize: 16,
    color: Color.fromARGB(255, 125, 125, 125),
    fontWeight: FontWeight.normal,
  );
  static const TextStyle singleProductTitle = TextStyle(
    fontSize: 14,
    color: Color.fromARGB(255, 0, 0, 0),
    fontWeight: FontWeight.w600,
  );
  static const TextStyle counterProductSKUTitle = TextStyle(
    fontSize: 14,
    color: Color.fromARGB(255, 177, 17, 127),
    fontWeight: FontWeight.normal,
  );
  static const TextStyle singleProductArticle = TextStyle(
    fontSize: 13,
    color: Color.fromARGB(255, 100, 100, 100),
    fontWeight: FontWeight.w500,
  );
  static const TextStyle singleProductBodyBold = TextStyle(
    fontSize: 12,
    color: Color.fromARGB(255, 0, 0, 0),
    fontWeight: FontWeight.bold,
  );
  static const TextStyle selectTABText = TextStyle(
    fontSize: 12,
    decoration: TextDecoration.underline,
    decorationStyle: TextDecorationStyle.solid,
    color: Color.fromARGB(255, 0, 0, 0),
    // backgroundColor: FSColors.baseFSColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle tABTextSKU0 = TextStyle(
    fontSize: 10,
    overflow: TextOverflow.ellipsis,
    color: FSColors.baseFSColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle tABTextSKU1 = TextStyle(
    fontSize: 10,
    overflow: TextOverflow.ellipsis,
    color: FSColors.fuxiaFSColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle unselectTABText = TextStyle(
    fontSize: 12,
    //height: 1.3,
/*     decoration: TextDecoration.underline,
    decorationStyle: TextDecorationStyle.solid, */
    color: Colors.black45,
    fontWeight: FontWeight.normal,
  );
}

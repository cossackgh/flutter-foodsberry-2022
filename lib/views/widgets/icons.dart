import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildIcon(double size, Color color) {
  return Container(
    height: size,
    width: size,
    alignment: Alignment.center,
    child: Icon(
      CupertinoIcons.heart_fill,
      color: color,
      size: size,
    ),
  );
}

Widget borderIcon(double size, Color color, Color borderColor) {
  return Stack(
    alignment: Alignment.center,
    children: [
      buildIcon(size + 6, borderColor),
      buildIcon(size + 2, color),
    ],
  );
}

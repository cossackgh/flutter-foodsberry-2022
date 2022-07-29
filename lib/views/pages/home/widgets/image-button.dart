import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({
    Key? key,
    this.imageBGUrl,
    this.width = 10.0,
    this.height = 10.0,
  }) : super(key: key);

  final String? imageBGUrl;

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
              bottomRight: Radius.circular(8),
              bottomLeft: Radius.circular(8)),
          image: DecorationImage(
              image: AssetImage(imageBGUrl!), fit: BoxFit.cover),
          // child: Text("clickMe") // button text
        ));
  }
}

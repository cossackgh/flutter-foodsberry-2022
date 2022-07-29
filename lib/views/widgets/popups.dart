import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

class Logic {
  void showBasicsFlash({
    context,
    bool? isError, // type info 1 - INFO, 2 - ERROR
    String? message, //
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
          backgroundColor: isError! ? Colors.red : Colors.black54,
          position: FlashPosition.bottom,
          boxShadows: kElevationToShadow[4],
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          child: FlashBar(
            content: Text(message!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                )),
          ),
        );
      },
    );
  }
}

void showBasicsFlash({
  context,
  bool? isError, // type info 1 - INFO, 2 - ERROR
  String? message, //
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
        backgroundColor: isError! ? Colors.red : Colors.black54,
        position: FlashPosition.bottom,
        boxShadows: kElevationToShadow[4],
        horizontalDismissDirection: HorizontalDismissDirection.horizontal,
        child: FlashBar(
          content: Text(message!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
              )),
        ),
      );
    },
  );
}

bool? showDialogFlash({
  context,
  bool? isError, // type info 1 - INFO, 2 - ERROR
  String? message, //
  Duration? duration,
  flashStyle = FlashBehavior.floating,
}) {
  context.showFlashDialog(
      constraints: const BoxConstraints(maxWidth: 300),
      persistent: true,
      title: const Text('Flash Dialog'),
      content: const Text(
          '⚡️A highly customizable, powerful and easy-to-use alerting library for Flutter.'),
      negativeActionBuilder: (context, controller, _) {
        return TextButton(
          onPressed: () {
            controller.dismiss();
            //   return false;
          },
          child: const Text('NO'),
        );
      },
      positiveActionBuilder: (context, controller, _) {
        return TextButton(
            onPressed: () {
              controller.dismiss();
              //  return true;
            },
            child: const Text('YES'));
      });
  return null;
}

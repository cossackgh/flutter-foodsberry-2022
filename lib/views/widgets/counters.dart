import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/views/widgets/counters.dart';

class CountSFW extends ConsumerStatefulWidget {
  final int plusLimit;
  final int startCount;
  final StateProvider<int?> counterSKUNext;
  const CountSFW(
      {Key? key,
      required this.plusLimit,
      required this.startCount,
      required this.counterSKUNext})
      : super(key: key);

  @override
  _CountSFWState createState() => _CountSFWState(
      plusLimit: plusLimit,
      startCount: startCount,
      counterSKUNext: counterSKUNext);
}

class _CountSFWState extends ConsumerState<CountSFW> {
  int plusLimit;
  int startCount;
  StateProvider<int?> counterSKUNext;
  @override
  void initState() {
    super.initState();

    print('startCount = > $startCount');
/*     ref.read(counterSKU.state); */
    // TODO: implement ref.read(counterSKU.state).state = startCount;
  }

  _CountSFWState(
      {required this.plusLimit,
      required this.startCount,
      required this.counterSKUNext});

  @override
  Widget build(BuildContext context) {
    //ref.read(counterSKU.state).state = startCount;
    final _lC = ref.watch(counterSKUNext.state).state;
    return Container(
        height: 40,
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
                bottomLeft: Radius.circular(8)),
            border: Border.all(color: Colors.black54)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              child: const Text(
                '-',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black54,
                    fontWeight: FontWeight.normal),
              ),
              onPressed: () {
                setState(() {
                  startCount = startCount - 1;
                  if (startCount <= 1) {
                    startCount = 1;
                  }

                  ref.read(counterSKUNext.state).state = startCount;
                });

                print('Count minus');
              },
            ),
            Text('$_lC'),
            TextButton(
              child: const Text(
                '+',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black54,
                    fontWeight: FontWeight.normal),
              ),
              onPressed: () {
                setState(() {
                  startCount = startCount + 1;
                  if (startCount >= plusLimit) {
                    startCount = plusLimit;
                  }
                  ref.read(counterSKUNext.state).state = startCount;
                });

                print('Count plus');
              },
            ),
          ],
        ));
  }
}

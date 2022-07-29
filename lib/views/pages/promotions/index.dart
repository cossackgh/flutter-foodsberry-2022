import 'package:flutter/material.dart';

class PromotionsPage extends StatelessWidget {
  const PromotionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const Key('promotionsPageKey'),
      child: const Center(
        child: Text('PROMOTIONS PAGE'),
      ),
    );
  }
}

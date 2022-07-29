import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/user/user.dart';
import 'package:foodsberrymobile/views/widgets/drawer.dart';

final StateProvider<User?> userState = StateProvider((ref) => null);

class CategoriesPage extends ConsumerWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
/*           leading: IconButton(
            icon: const Icon(Icons.chevron_left, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ), */
          foregroundColor: Colors.black54,
          actions: [
            IconButton(
              color: Colors.black54,
              icon: const Icon(Icons.search),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
          ],
          elevation: 4,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text('КАТЕГОРИИ'),
        ),
        body: Container(
            //key: const Key('ProfilePageKey'),
            child: Center(child: Consumer(builder: (context, ref, _) {
          //final userData = ref.watch(userState.state).state;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('CATEGORIES PAGE'),
            ],
          );
        }))));
  }
}

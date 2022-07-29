import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/auth/auth.dart';
import 'package:foodsberrymobile/store/global/user/user.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(vertical: 12),
        elevation: 4,
        child: Consumer(builder: (context, ref, _) {
          final userData = ref.watch(userState.state).state;
          final isL = ref.watch(authState.state).state;
          print('userData = >>> $userData');
          print('isL ======= > $isL');
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Имя : ${userData?.firstName}'),
                  Text('E-mail : ${userData?.email}'),
                  Text('Телефон : ${userData?.phone}'),
                ],
              ));
        }));
  }
}

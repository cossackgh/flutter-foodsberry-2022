import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const Key('loginPageKey'),
      child: const Center(
        child: Text('LOGIN PAGE'),
      ),
    );
  }
}

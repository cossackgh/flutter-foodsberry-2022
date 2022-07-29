import 'package:hive/hive.dart';
import 'package:foodsberrymobile/store/global/auth/auth.dart';

bool isLogin() {
  bool isLogin = false;

  tokenBox = Hive.box<AuthHive>(tokenBoxName);
  AuthHive? currentToken = tokenBox!.get('keyToken');

  if (currentToken != null) {
    isLogin = true;
  }

  return isLogin;
}


import 'package:flutter/cupertino.dart';

class LoginViewModel {

  late final TextEditingController _username = TextEditingController();
  late final TextEditingController _password = TextEditingController();

  TextEditingController get username {
    return _username;
  }
  TextEditingController get password {
    return _password;
  }
  Future<bool> login() async {
    if (username.text.isEmpty || password.text.isEmpty) {
      return false;
    }
    return true;
  }
}
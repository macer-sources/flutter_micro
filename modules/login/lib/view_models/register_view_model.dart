
import 'package:flutter/cupertino.dart';

class RegisterViewModel {
  late final TextEditingController _username = TextEditingController();
  late final TextEditingController _password = TextEditingController();
  TextEditingController get username {
    return _username;
  }
  TextEditingController get password {
    return _password;
  }
}
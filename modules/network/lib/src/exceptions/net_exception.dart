
import 'package:core/core.dart';

enum NetworkExceptionType {
  expiredToken,
  userInvalid,
  moduleError
}

class NetworkException extends BasicException {
  NetworkExceptionType type;
  String message;
  String code;

  NetworkException(this.type, this.message, this.code);

  @override
  String toString() {
    return message;
  }
}

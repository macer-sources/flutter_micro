

import 'package:core/core.dart';

class UnknownException extends BasicException {
  final Object? error;
  UnknownException(this.error);
}

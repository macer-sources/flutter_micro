

class BasicException implements Exception {
  BasicException([this._message = ""]);
  final dynamic _message;

  @override
  String toString() {
    return "$_message";
  }
}



enum RouterPathKey {
  main,
  login,
  register,
  home,
  profile,
}

extension Path on RouterPathKey {
  String get path {
    if (this == RouterPathKey.main) {
      return "/";
    }
    return "/$name";
  }
}


enum RouterPathKey {
  none,
  main,
  // 登录相关
  splashLogin,
  presentLogin,
  login,
  register,
  registerSendForEmail,
  registerFieldCode,
  registerSetPassword,
  // 个人中心相关
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
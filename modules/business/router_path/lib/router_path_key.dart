

enum RouterPathKey {
  none,
  main,
  home,
  // 登录相关
  splashLogin,
  presentLogin,
  login,
  register,
  registerSendForEmail,
  registerFieldCode,
  registerSetPassword,
  // 个人中心相关
  profile, loading,
}

extension Path on RouterPathKey {
  String get path {
    if (this == RouterPathKey.main) {
      return "/";
    }
    return "/$name";
  }
}
/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/commons
  $AssetsImagesCommonsGen get commons => const $AssetsImagesCommonsGen();

  /// Directory path: assets/images/login
  $AssetsImagesLoginGen get login => const $AssetsImagesLoginGen();
}

class $AssetsImagesCommonsGen {
  const $AssetsImagesCommonsGen();

  /// File path: assets/images/commons/icon.arrow.down.png
  AssetGenImage get iconArrowDown =>
      const AssetGenImage('assets/images/commons/icon.arrow.down.png');

  /// File path: assets/images/commons/icon.arrow.up.png
  AssetGenImage get iconArrowUp =>
      const AssetGenImage('assets/images/commons/icon.arrow.up.png');

  /// File path: assets/images/commons/icon.failed.png
  AssetGenImage get iconFailed =>
      const AssetGenImage('assets/images/commons/icon.failed.png');

  /// File path: assets/images/commons/icon.success.png
  AssetGenImage get iconSuccess =>
      const AssetGenImage('assets/images/commons/icon.success.png');

  /// File path: assets/images/commons/loading.1.png
  AssetGenImage get loading1 =>
      const AssetGenImage('assets/images/commons/loading.1.png');

  /// File path: assets/images/commons/loading.2.png
  AssetGenImage get loading2 =>
      const AssetGenImage('assets/images/commons/loading.2.png');

  /// File path: assets/images/commons/loading.3.png
  AssetGenImage get loading3 =>
      const AssetGenImage('assets/images/commons/loading.3.png');

  /// File path: assets/images/commons/loading.4.png
  AssetGenImage get loading4 =>
      const AssetGenImage('assets/images/commons/loading.4.png');

  /// File path: assets/images/commons/loading.5.png
  AssetGenImage get loading5 =>
      const AssetGenImage('assets/images/commons/loading.5.png');

  /// File path: assets/images/commons/loading.6.png
  AssetGenImage get loading6 =>
      const AssetGenImage('assets/images/commons/loading.6.png');

  /// File path: assets/images/commons/loading.7.png
  AssetGenImage get loading7 =>
      const AssetGenImage('assets/images/commons/loading.7.png');

  /// File path: assets/images/commons/loading.8.png
  AssetGenImage get loading8 =>
      const AssetGenImage('assets/images/commons/loading.8.png');

  /// File path: assets/images/commons/login.email.png
  AssetGenImage get loginEmail =>
      const AssetGenImage('assets/images/commons/login.email.png');

  /// File path: assets/images/commons/login.logo.png
  AssetGenImage get loginLogo =>
      const AssetGenImage('assets/images/commons/login.logo.png');

  /// File path: assets/images/commons/login.next.png
  AssetGenImage get loginNext =>
      const AssetGenImage('assets/images/commons/login.next.png');

  /// File path: assets/images/commons/login.secure.disable.png
  AssetGenImage get loginSecureDisable =>
      const AssetGenImage('assets/images/commons/login.secure.disable.png');

  /// File path: assets/images/commons/login.secure.enable.png
  AssetGenImage get loginSecureEnable =>
      const AssetGenImage('assets/images/commons/login.secure.enable.png');

  /// File path: assets/images/commons/login.social.apple.png
  AssetGenImage get loginSocialApple =>
      const AssetGenImage('assets/images/commons/login.social.apple.png');

  /// File path: assets/images/commons/login.social.google.png
  AssetGenImage get loginSocialGoogle =>
      const AssetGenImage('assets/images/commons/login.social.google.png');

  /// File path: assets/images/commons/navigation.back.png
  AssetGenImage get navigationBack =>
      const AssetGenImage('assets/images/commons/navigation.back.png');

  /// File path: assets/images/commons/navigation.close.png
  AssetGenImage get navigationClose =>
      const AssetGenImage('assets/images/commons/navigation.close.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        iconArrowDown,
        iconArrowUp,
        iconFailed,
        iconSuccess,
        loading1,
        loading2,
        loading3,
        loading4,
        loading5,
        loading6,
        loading7,
        loading8,
        loginEmail,
        loginLogo,
        loginNext,
        loginSecureDisable,
        loginSecureEnable,
        loginSocialApple,
        loginSocialGoogle,
        navigationBack,
        navigationClose
      ];
}

class $AssetsImagesLoginGen {
  const $AssetsImagesLoginGen();

  /// File path: assets/images/login/splash.background.webp
  AssetGenImage get splashBackground =>
      const AssetGenImage('assets/images/login/splash.background.webp');

  /// File path: assets/images/login/splash.logo.png
  AssetGenImage get splashLogo =>
      const AssetGenImage('assets/images/login/splash.logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [splashBackground, splashLogo];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => assetName;

  String get assetName {
    return "packages/assets/$_assetName";
  }


  String get keyName => _assetName;
}

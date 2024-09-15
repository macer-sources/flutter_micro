
import 'package:assets/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:router_path/router_manager.dart';
import 'package:router_path/router_path.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned.fill(child: Assets.images.login.splashBackground.image(fit: BoxFit.cover))
          ],
        ));
  }
}

extension _Action on _SplashPageState {
  void _regsiterAction(BuildContext context) async {
    RouterManager.push(RouterPathKey.register);
  }
  void _loginAction(BuildContext context) async {
    RouterManager.push(RouterPathKey.login);
  }

}
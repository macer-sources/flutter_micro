
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
            Positioned.fill(child: Assets.images.login.splashBackground.image(fit: BoxFit.cover)),
            Positioned(
                top: 40,
                left: 10,
                right: 10,
                child: Row(children: [
                  IconButton(onPressed: () => _dismissAction(context), icon: Assets.images.commons.navigationClose.image(width: 25,height: 25),highlightColor: Colors.transparent,splashColor: Colors.transparent,),
                  const Spacer(),
                  TextButton(onPressed: () => _skitAction(context), child: const Text("Skip"))
            ])),
          ],
        ));
  }
}

extension _Action on _SplashPageState {
  void _skitAction(BuildContext context) async {
    RouterManager.push(RouterPathKey.register);
  }
  void _dismissAction(BuildContext context) async {
    RouterManager.dismiss();
  }
}

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
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Center(
          child: Row(children: [
            ElevatedButton(onPressed: () => _loginAction(context), child: const Text("Login")),
            ElevatedButton(onPressed: () => _regsiterAction(context), child: const Text("Register")),
          ],)
      ),
    );
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


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:router_path/router_manager.dart';
import 'package:router_path/router_path.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () => _registerButtonAction(), child: const Text("Register")),
      ),
    );
  }
}

extension _Action on _RegisterPageState {
  void _registerButtonAction() async {
      RouterManager.push(RouterPathKey.registerSendForEmail);
  }
}
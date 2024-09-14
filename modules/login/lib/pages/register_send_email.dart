

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:router_path/router_manager.dart';
import 'package:router_path/router_path.dart';

class RegisterSendEmailPage extends StatefulWidget {
  const RegisterSendEmailPage({super.key});

  @override
  State<RegisterSendEmailPage> createState() => _RegisterSendEmailPageState();
}

class _RegisterSendEmailPageState extends State<RegisterSendEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Send Email"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () => _registerButtonAction(), child: const Text("register Field Code")),
      ),
    );
  }
}

extension _Action on _RegisterSendEmailPageState {
  void _registerButtonAction() async {
    RouterManager.push(RouterPathKey.registerFieldCode);
  }
}
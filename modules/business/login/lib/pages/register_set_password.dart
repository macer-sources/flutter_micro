import 'package:flutter/material.dart';
import 'package:router_path/router_manager.dart';

class RegisterSetPasswordPage extends StatefulWidget {
  const RegisterSetPasswordPage({super.key});

  @override
  State<RegisterSetPasswordPage> createState() => _RegisterSetPasswordPageState();
}

class _RegisterSetPasswordPageState extends State<RegisterSetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Send Email"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () => _registerButtonAction(), child: const Text("enter set password")),
      ),
    );
  }
}

extension _Action on _RegisterSetPasswordPageState {
  void _registerButtonAction() async {
      debugPrint("[DEBUG]: 注册成功");
      debugPrint("[DEBUG]: 自动登录成功");
      RouterManager.dismiss();
  }
}
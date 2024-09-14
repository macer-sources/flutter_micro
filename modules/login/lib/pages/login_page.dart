
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:login/view_models/login_view_model.dart';
import 'package:router_path/router_manager.dart';
import 'package:router_path/router_path.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginViewModel viewModel = LoginViewModel();

  void _loginAction(BuildContext context) async {
    dismissKeyboard(context);
    bool result = await viewModel.login();
    if (result) {
      debugPrint("[DEBUG]: 登陆成功");
      RouterManager.dismiss();
      return;
    }
    debugPrint("[DEBUG]: 登陆失败");
    RouterManager.dismiss();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
          child: ElevatedButton(onPressed: () => _loginAction(context), child: const Text("Login"))
      ),
    );
  }
}


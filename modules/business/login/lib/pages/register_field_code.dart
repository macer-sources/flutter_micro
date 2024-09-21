

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:router_path/router_manager.dart';
import 'package:router_path/router_path.dart';

class RegisterFieldCodePage extends StatefulWidget {
  const RegisterFieldCodePage({super.key});

  @override
  State<RegisterFieldCodePage> createState() => _RegisterFieldCodePageState();
}

class _RegisterFieldCodePageState extends State<RegisterFieldCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Field code"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () => _registerButtonAction(), child: const Text("enter set password")),
      ),
    );
  }
}

extension _Action on _RegisterFieldCodePageState {
  void _registerButtonAction() async {
    RouterManager.push(RouterPathKey.registerSetPassword);
  }
}
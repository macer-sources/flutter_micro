

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

extension _RegisterPageStateAction on _RegisterPageState {
  void _registerButtonAction() async {

  }
}
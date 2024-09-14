
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:router_path/router_manager.dart';
import 'package:router_path/router_path.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _regsiterAction(BuildContext context) async {
    RouterManager.push(RouterPathKey.splashLogin);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
          child: ElevatedButton(onPressed: () => _regsiterAction(context), child: const Text("Login"))
      ),
    );
  }
}

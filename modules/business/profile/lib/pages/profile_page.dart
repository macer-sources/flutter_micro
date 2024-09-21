// TODO Implement this library.

import 'package:flutter/material.dart';
import 'package:router_path/router_path.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  void _regsiterAction(BuildContext context) async {

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Center(
          child: ElevatedButton(onPressed: () => _regsiterAction(context), child: const Text("Profile"))
      ),
    );
  }
}

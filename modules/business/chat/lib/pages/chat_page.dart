
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:router_path/router_path.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  void _regsiterAction(BuildContext context) async {

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
      ),
      body: Center(
          child: ElevatedButton(onPressed: () => _regsiterAction(context), child: const Text("Chat"))
      ),
    );
  }
}

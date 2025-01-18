
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:commons/commons.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  final loadingViewModel = Get.put(LoadingViewModel());

  @override
  Widget build(BuildContext context) {
    // loadingViewModel.autoLogin().then((_) {
    //   RouterManager.replace(RouterPathKey.main);
    //   debugPrint("[DEBUG]: 登陆成功");
    // });
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class LoadingViewModel extends GetxController {
  final authStatusService = Get.find<AuthStatusService>();

  Future<void> autoLogin() async {
    await authStatusService.autoLogin();
  }
}

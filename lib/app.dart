
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home/pages/home_page.dart';
import 'package:login/pages/login_page.dart';
import 'package:micro_flutter/src/config/configuration.dart';
import 'package:router_path/router_path.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();

}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(value: SystemUiOverlayStyle.dark,
        child: GetMaterialApp(
          title: "Flutter Micro",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: RouterPathKey.main.path,
          // home: const HomePage(),
          getPages: Configuration.pages(),
        )
    );
  }
}

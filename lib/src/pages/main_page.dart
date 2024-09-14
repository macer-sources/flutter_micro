
import 'package:chat/pages/chat_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home/pages/home_page.dart';
import 'package:profile/pages/profile_page.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class TabModel {
  String name;
  IconData icon;
  IconData selectedIcon;
  TabModel(this.name, this.icon, this.selectedIcon);
}

class _MainPageState extends State<MainPage> {
  int _tabIndex = 0;
  // TODO: 测试的tab image
  final List<TabModel> _tabModels = [
    TabModel("Home", Icons.home, Icons.home),
    TabModel("s", Icons.chat, Icons.chat),
    TabModel("name", Icons.person, Icons.person)
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _checkLoginStatus();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _checkLoginStatus() {
    // Future.delayed(Duration(seconds: 10),(){
    // AuthProvider logined = Provider.of<AuthProvider>(context, listen: false);
    // if (!logined.value) {
    //   RouterManager.present(RouterPath.presentLogin);
    // }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _tabIndex,
        children: const <Widget>[
          HomePage(),
          ChatPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        activeColor: Colors.pink,
        items: <BottomNavigationBarItem>[
          generate(0),
          generate(1),
          generate(2)
        ],
        currentIndex: _tabIndex,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }


  BottomNavigationBarItem generate(int index) {
    TabModel model = _tabModels[index];
    IconData iconData = _tabIndex == index ? model.selectedIcon :  model.icon;
    return BottomNavigationBarItem(icon: Icon(iconData), label: model.name);
  }
}



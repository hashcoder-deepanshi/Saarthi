import 'package:flutter/material.dart';
import 'package:saarthi/pages/navPages/chatBotPage.dart';
import 'package:saarthi/pages/navPages/homePage.dart';
import 'package:saarthi/pages/navPages/profilePage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), chatBot(), profilePage()];

  //for navigation of bar items
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.4),
          elevation: 0,
          currentIndex: currentIndex,
          backgroundColor: Colors.grey,
          type: BottomNavigationBarType.shifting,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'ChatBot', icon: Icon(Icons.chat)),
            BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person))
          ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled13/pages/account_page.dart';
import 'package:untitled13/pages/add_page.dart';
import 'package:untitled13/pages/home_page.dart';
import 'package:untitled13/pages/likes_page.dart';
import 'package:untitled13/pages/search_page.dart';

class MainPage extends StatefulWidget {
  static const String id = "main";

  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    SearchPage(),
    AddPage(),
    LikesPage(),
    AccountPage()
  ];

  int myCurrentIndex = 0;
  void myOnTap(int index) {
    setState(() {
      myCurrentIndex = index;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[myCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBarType.fixed,
        onTap: myOnTap,
        currentIndex: myCurrentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        //elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Like"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}

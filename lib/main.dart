import 'package:flutter/material.dart';
import 'package:untitled13/pages/account_page.dart';
import 'package:untitled13/pages/add_page.dart';
import 'package:untitled13/pages/home_page.dart';
import 'package:untitled13/pages/likes_page.dart';
import 'package:untitled13/pages/main_page.dart';
import 'package:untitled13/pages/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
      routes: {
        MainPage.id: (context) => MainPage(),
        HomePage.id: (context) => HomePage(),
        SearchPage.id: (context) => SearchPage(),
        AddPage.id: (context) => AddPage(),
        LikesPage.id: (context) => LikesPage(),
        AccountPage.id: (context) => AccountPage(),
      },
    );
  }
}

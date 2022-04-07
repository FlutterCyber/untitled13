import 'package:flutter/material.dart';
class LikesPage extends StatefulWidget {
  static const String id = "likes";

  const LikesPage({Key? key}) : super(key: key);

  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Likes page",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}

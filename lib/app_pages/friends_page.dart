import 'package:flutter/material.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("friends"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
    );
  }
}

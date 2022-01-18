import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 2;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.chat, size: 30, color: Colors.white),
      const Icon(Icons.search, size: 30, color: Colors.white),
      const Icon(Icons.home, size: 30, color: Colors.white),
      const Icon(Icons.settings, size: 30, color: Colors.white),
      const Icon(Icons.person, size: 30, color: Colors.white),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navbar"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text(
          "TEXT",
          style: TextStyle(
            fontSize: 100,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        height: 60,
        color: Colors.deepPurple,
        backgroundColor: Colors.white,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}

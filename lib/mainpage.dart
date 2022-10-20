import "package:flutter/material.dart";

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});
  final String title;
  static const String id = "mainpage";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: const [
          Icon(Icons.logout),
        ],
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey[400]),
              child: const Text('Hi! McLean')),
          const Divider(
            thickness: 5,
          ),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          )
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:latihankuis/models/data.dart';
import 'package:latihankuis/views/home.dart';
import 'package:latihankuis/views/profile.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomePage(),
      ProfilePage(user: user1,),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page")
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
          ),
        ]
      ),
    );
  }
}
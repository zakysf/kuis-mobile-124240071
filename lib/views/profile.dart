import 'package:flutter/material.dart';
import 'package:latihankuis/views/login.dart';
import 'package:latihankuis/models/data.dart';

class ProfilePage extends StatelessWidget {
  final User user;  
  const ProfilePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://img.freepik.com/premium-vector/profile-icon-logo-template-illustration-design-vector-eps-10_822766-6674.jpg",
              width: 100,
              height: 100
            ),
            SizedBox(height: 10),
            Text("Username", style: TextStyle(fontSize: 15),),
            SizedBox(height: 10),
            Text(user.username, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (route) => false,
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.logout),
                  SizedBox(width: 5,),
                  Text("Logout"),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
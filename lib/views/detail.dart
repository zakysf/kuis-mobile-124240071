import 'package:flutter/material.dart';
import 'package:latihankuis/models/data.dart';

class DetailPage extends StatelessWidget {
  final Menu menu;
  
  const DetailPage({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(menu.name)
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(child: Image.network(menu.image)),
          ),
          SizedBox(height: 20),
          Text(menu.name, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          Text(menu.category, style: TextStyle(fontSize: 15, color: Colors.grey)),
          SizedBox(height: 20),
          Text(menu.price, style: TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Text("Deskripsi: ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          SizedBox(height: 5),
          Text(menu.description),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
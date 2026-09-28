import 'package:flutter/material.dart';
import 'package:latihankuis/views/detail.dart';

import '../models/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menus.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(menu: menus[index]),
              ),
            );
          },
          title: Text(menus[index].name),
          subtitle: Text(menus[index].price),
          leading: Image.network(
            menus[index].image,
            width: 100,
            height: 100,
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        );
      },
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Home"),
    //   ),
    //   body: ListView.builder(
    //     itemCount: menu.length,
    //     itemBuilder:(context, index) {
    //       return ListTile(
    //         onTap:() {
    //           Navigator.push(context,
    //           MaterialPageRoute(builder: (context) => DetailPage(product: menu[index])));
    //         },
    //         title: Text(menu[index].name),
    //         subtitle: Text("Rp ${menu[index].price}"),
    //         leading: Image.network(
    //           menu[index].image,
    //           width: 100,
    //           height: 100,
    //         ),
    //         trailing: Icon(Icons.arrow_forward_ios)
    //       );
    //     },
    //   ),
    // );
  }
}

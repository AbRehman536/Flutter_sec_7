import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Tile"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body:ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return const Card(
            color: Colors.green,
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.notification_add),
              title: Text("Notification"),
              subtitle: Text("You have new message"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      )
    );
  }
}

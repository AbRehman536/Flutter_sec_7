import 'package:flutter/material.dart';

class PopupMenuDemo extends StatelessWidget {
  const PopupMenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popup"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) { 
             return [
               PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Profile"))),
               PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Notifications"))),
               PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Settings"))),
               PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Logout"))),
             ];
            },)
        ],
      ),
      body: Center(child:
        Text("Click on 3 dots to open pop up menu"),),
    );
  }
}

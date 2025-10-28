import 'package:flutter/material.dart';
import 'package:flutter_sec_7/listtile.dart';

class PopupMenuDemo extends StatelessWidget {
  const PopupMenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Pop Up "),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) { 
              return [
                PopupMenuItem(child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ListTileDemo()));
                }, child: Text("Profile"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Settings"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Notifications"))),
                PopupMenuItem(child: TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Logout"))),
              ];
            },)
        ],
      ),
    );
  }
}

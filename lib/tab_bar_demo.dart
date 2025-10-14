import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          backgroundColor: Colors.yellow,
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.green,
            tabs: [
            Tab(text: 'Home',icon: Icon(Icons.home),),
            Tab(text: 'Settings',icon: Icon(Icons.settings),),
            Tab(text: 'Profile',icon: Icon(Icons.person),),
          ],),
        ),
        body: TabBarView(children: [
          Center(child: Column(children: [
            Icon(Icons.home),
            Text("Home"),
          ],)),
          Center(child: Text("Settings"),),
          Center(child: Text("Profile"),),
        ])
      ),
    );
  }
}

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
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          centerTitle: true,
          bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.black,
              tabs: [
            Tab(text: 'Home',icon: Icon(Icons.home),),
            Tab(text: 'Settings',icon: Icon(Icons.settings),),
            Tab(text: 'Profile',icon: Icon(Icons.person),),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Column(children: [
            Icon(Icons.home),
            Text("Home")
          ],),),
          Center(child: Column(children: [
            Icon(Icons.settings),
            Text("Settings")
          ],),),
          Center(child:Column(children: [
            Icon(Icons.person),
            Text("Profile")
          ],) ,),
        ]),
      ),
    );
  }
}

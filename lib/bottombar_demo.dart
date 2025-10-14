import 'package:flutter/material.dart';
import 'package:flutter_sec_7/listtile.dart';
import 'package:flutter_sec_7/login_screen.dart';
import 'package:flutter_sec_7/multiple_selection.dart';
import 'package:flutter_sec_7/single_selection.dart';


class BottomBarDemo extends StatefulWidget {
  const BottomBarDemo({super.key});

  @override
  State<BottomBarDemo> createState() => _BottomBarDemoState();
}

class _BottomBarDemoState extends State<BottomBarDemo> {
  int selectedIndex = 2;
  List<Widget> screenList =[ListTileDemo(),SingleSelectionDemo(),MultipleSelectionDemo(),LoginScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          onTap: (i){
            setState(() {
              selectedIndex = i;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'Chats'),
            BottomNavigationBarItem(icon: Icon(Icons.update),label: 'Updates'),
            BottomNavigationBarItem(icon: Icon(Icons.social_distance),label: 'Community'),
            BottomNavigationBarItem(icon: Icon(Icons.call),label: 'Calls'),
          ]),

    );
  }
}

import 'package:flutter/material.dart';

class SingleSelectionDemo extends StatefulWidget {
  const SingleSelectionDemo({super.key});

  @override
  State<SingleSelectionDemo> createState() => _SingleSelectionDemoState();
}

class _SingleSelectionDemoState extends State<SingleSelectionDemo> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Selection"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          final isSelected = selectedIndex == index;
          return ListTile(
            onTap: (){
              setState(() {
                selectedIndex = isSelected ? -1 : index;
              });
            },
            tileColor: isSelected ? Colors.blue : Colors.white60,
            textColor: isSelected ? Colors.white: Colors.black,
            iconColor: isSelected ? Colors.white : Colors.black,
            leading: Icon(isSelected ? Icons.notifications_active_outlined : Icons.notification_add),
            title: Text("Notification, $selectedIndex"),
            subtitle: Text("You have new message. $index"),
            trailing: Icon(isSelected ? Icons.arrow_downward_sharp :Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}

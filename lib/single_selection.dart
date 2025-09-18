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
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Single Selection",style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          final isSelected = selectedIndex == index;
          return ListTile(
            onTap: (){
              setState(() {
                  selectedIndex = isSelected ? -1 : index;
              });
            },
            tileColor: isSelected ? Colors.black : Colors.white60,
            textColor: isSelected ? Colors.white : Colors.black,
            iconColor: isSelected ? Colors.white : Colors.black,
            leading: Icon(isSelected ? Icons.notification_add_outlined : Icons.notification_add),
            title: Text("Selected Index, $selectedIndex"),
            subtitle: Text("Index , $index"),
            trailing: Icon(isSelected ? Icons.remove : Icons.add),
          );
        },
      ),
    );
  }
}

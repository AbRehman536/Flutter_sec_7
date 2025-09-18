import 'package:flutter/material.dart';

class MultipleSelectionDemo extends StatefulWidget {
  const MultipleSelectionDemo({super.key});

  @override
  State<MultipleSelectionDemo> createState() => _MultipleSelectionDemoState();
}

class _MultipleSelectionDemoState extends State<MultipleSelectionDemo> {
  List<int> selectedIndex = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Tile"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body:ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: (){
                if(selectedIndex.contains(index)){
                  selectedIndex.remove(index);
                }else{
                  selectedIndex.add(index);
                }
                setState(() {});
              },
              tileColor: selectedIndex.contains(index) ? Colors.blue : Colors.white60,
              leading: Icon(Icons.notification_add),
              title: Text("Notification,$selectedIndex"),
              subtitle: Text("You have new message,$index"),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          },
        )
    );
  }
}

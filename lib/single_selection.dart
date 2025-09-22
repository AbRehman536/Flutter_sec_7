import 'package:flutter/material.dart';

class SingleSelectionDemo extends StatefulWidget {
  const SingleSelectionDemo({super.key});

  @override
  State<SingleSelectionDemo> createState() => _SingleSelectionDemoState();
}

class _SingleSelectionDemoState extends State<SingleSelectionDemo> {
  int selectedIndex = -1; // -1 means nothing selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("Single Selection", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return ListTile(
            selected: selectedIndex == index, // <-- built-in property
            selectedTileColor: Colors.black,
            selectedColor: Colors.white,
            leading: Icon(
              selectedIndex == index ?
              Icons.notification_add_outlined : Icons.notification_add,
            ),
            title: Text("Selected Index: $selectedIndex"),
            subtitle: Text("Index: $index"),
            trailing: Icon(
              selectedIndex == index ? Icons.remove : Icons.add,
            ),
            onTap: () {
              setState(() => selectedIndex = index);
            },
          );
        },
      ),
    );
  }
}

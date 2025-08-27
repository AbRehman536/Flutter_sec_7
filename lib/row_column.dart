import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Row / Column"),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Name",style: TextStyle(fontSize: 30),),
            Text("Age",style: TextStyle(fontSize: 30),),
            Text("Class",style: TextStyle(fontSize: 30),),
            Text("City",style: TextStyle(fontSize: 30),),
            Text("Contact",style: TextStyle(fontSize: 30),),
          ],
        ),
      ),
    );
  }
}

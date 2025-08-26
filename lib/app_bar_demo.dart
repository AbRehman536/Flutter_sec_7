import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("App Bar"),
        centerTitle: true,
        actions: [
          Icon(Icons.notification_add),
          Icon(Icons.bookmark),
        ],
      ),
    );
  }
}

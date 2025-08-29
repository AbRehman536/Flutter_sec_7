import 'package:flutter/material.dart';

class AssetImageDemo extends StatelessWidget {
  const AssetImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Network Image"),
      ),
      body: Column(children: [
        Image.asset("assets/images/download.jpg"),

      ],),
    );
  }
}

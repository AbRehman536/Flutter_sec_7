import 'package:flutter/material.dart';
import 'package:flutter_sec_7/providers/user.dart';
import 'package:provider/provider.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
        backgroundColor: Colors.yellow,
      ),
      body:
        Column(children: [
          Text(userProvider.getName().toString()),
          Text(userProvider.getEmail().toString()),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Back"))
        ],)
    );
  }
}

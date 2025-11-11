import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchDemo extends StatefulWidget {
  const CupertinoSwitchDemo({super.key});

  @override
  State<CupertinoSwitchDemo> createState() => _CupertinoSwitchDemoState();
}

class _CupertinoSwitchDemoState extends State<CupertinoSwitchDemo> {
  bool isSwitchOn = false;
  String? selectedValue;
  List<String> items = ["English", "Urdu" , "Maths", "Physics"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(child: Column(children: [
        ListTile(
          leading: Icon(isSwitchOn ? Icons.notifications_active_outlined : Icons.notifications),
          title: Text("Notifications"),
          subtitle: Text(isSwitchOn ?"ON" : "OFF"),
          trailing: CupertinoSwitch(
              value: isSwitchOn,
            onChanged: (bool value) {
                setState(() {
                  isSwitchOn = value;
                });
            },
            activeColor: Colors.black,
            trackColor: Colors.grey,
            thumbColor: Colors.green,
              ),
        ),
        SizedBox(
          width: 300,
          child: DropdownButton(
            hint: Text("Select Subject"),
              value: selectedValue,
              items: items.map((item){
                return DropdownMenuItem(
                  value: item,
                    child: Text(item));
              }).toList(),
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },),
        )
      ],),),
    );
  }
}

import 'package:flutter/material.dart';

class FABView extends StatelessWidget {
  const FABView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back_ios, color: Colors.white,size: 30,),
        title: Text("Floating Action",style: TextStyle(
          fontSize: 30,
          color: Colors.red,
          fontWeight: FontWeight.w500
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.phone,color: Colors.greenAccent,),
          Icon(Icons.calendar_month,color: Colors.yellow,),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){}, child: Icon(Icons.add,color: Colors.white,),),
    );
  }
}

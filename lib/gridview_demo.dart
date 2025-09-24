import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Grid View"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 20,
            mainAxisSpacing: 20.5,
            mainAxisExtent: 60,

          ),
          itemCount: 13,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                color: Colors.yellow,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: Icon(Icons.all_inbox),
                      title: Text("ALL"),
                      trailing: Icon(Icons.star_border),
                    ),

                ],));
          },
         ),
    );
  }
}

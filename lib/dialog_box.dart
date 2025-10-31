import 'package:flutter/material.dart';

class DialogBoxDemo extends StatelessWidget {
  const DialogBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Box"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(children: [
        Image.asset("assets/images/first.png"),
        Text("Lorem Ipsum"),
        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          IconButton(onPressed: (){
            showDialog(
              barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Thank You!"),
                    content: Text("You Like the Post"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("OKAY"))
                    ],
                  );
                },
                );
          }, icon: Icon(Icons.favorite)),
          IconButton(onPressed: (){
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Thank You!"),
                  content: Text("Do you want to Comment on this Post ?"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("OKAY"))
                  ],
                );
              },
            );
          }, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Thank You!"),
                  content: Text("Post Saved Successfully"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("OKAY"))
                  ],
                );
              },
            );
          }, icon: Icon(Icons.bookmark)),
          IconButton(onPressed: (){
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Thank You!"),
                  content: Text("Do you want to Share the post ?"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("OKAY"))
                  ],
                );
              },
            );
          }, icon: Icon(Icons.share)),
        ],)
      ],),
    );
  }
}

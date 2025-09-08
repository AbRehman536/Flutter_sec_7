import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Login"),
        centerTitle: true,
        actions: [Icon(Icons.settings)],
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(children: [
        SizedBox(height: 20,),
        Text("Welcome to Login Page",style: TextStyle(fontSize: 20),),
        SizedBox(height: 20,),
        TextField(
          decoration: InputDecoration(
            label: Text("Email"),
            hintText: 'abdullah@gmail.com',
            prefixIcon: Icon(Icons.email),
            suffixIcon: Icon(Icons.account_balance),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(width: 5),
            )
          ),
        ),
        SizedBox(height: 20,),
        TextField(
         decoration: InputDecoration(
           label: Text("Passowrd"),
           hintText: '123456789',
           prefix: Icon(Icons.lock),
           suffix: Icon(Icons.visibility),
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10),
           )

         ),
        ),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){}, child: Text("Login")),
        SizedBox(height: 20,),
        Text("Don't have account ?"),
        SizedBox(height: 20,),
        TextButton(onPressed: (){}, child: Text("Sign Up",style: TextStyle(
          fontSize: 30,
          color: Colors.red,
          fontWeight: FontWeight.w700,
        ),))

      ],),
    );
  }
}

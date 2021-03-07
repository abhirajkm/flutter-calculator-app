import 'package:flutter/material.dart';
import 'package:mynew_flutter_app/main.dart';
import 'package:mynew_flutter_app/screens/login.dart';
class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child:Column(
            children: [
              TextField(decoration: InputDecoration(
                labelText: "Name ",
              ),),
              RaisedButton(onPressed: (){
 //--Navigator.push(context, MaterialPageRoute(builder: (context)=>myApp()));

              },child: Text("Back"),)
            ],
          ),
        ),
      ),
    );
  }
}

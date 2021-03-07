import 'package:flutter/material.dart';
import 'package:mynew_flutter_app/screens/register.dart';
class Login extends StatelessWidget {
  TextEditingController name=TextEditingController();
  TextEditingController pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          children: [
            TextField(controller: name,decoration:
              InputDecoration(
                labelText: "Name",
              ),),
            TextField(obscureText: true,controller: pass,decoration: InputDecoration(
              labelText: "Password"
            ),),
            RaisedButton(onPressed: (){
              var getName=name.text;
              var getPass=pass.text;

              print(getName);
              print(getPass);
            },child: Text("login"),),
            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
            },
            child: Text("Register Here"),)
          ],
        ),
      ),
    );
  }
}

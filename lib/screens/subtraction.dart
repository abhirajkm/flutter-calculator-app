import 'package:flutter/material.dart';
import 'package:mynew_flutter_app/screens/mydrawer.dart';
class Subtraction extends StatefulWidget {
  @override
  _SubtractionState createState() => _SubtractionState();
}

class _SubtractionState extends State<Subtraction> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  int _sub=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(),
            drawer: MyDrawer(),
        body: Container(
          margin: EdgeInsets.all(25),
          child: Column(
            children: [
              TextField(controller: num1,
              decoration: InputDecoration(
                labelText: "Num1"
              ),),
            SizedBox(height: 20,),
            TextField(controller: num2,decoration: InputDecoration(
              labelText: "Num2"
            ),),
              SizedBox(height: 20,)
              ,RaisedButton(color: Colors.blue,onPressed: (){
                var getNum1=int.parse(num1.text);
                var getNum2=int.parse(num2.text);
                setState(() {
                  _sub=getNum1-getNum2;
                });
              },child: Text("Subtraction"),),
              SizedBox(height: 30,)
              ,
              Text("RESULT = " + _sub.toString()),
            ],
          ),
        )
      ),
    );
  }
}

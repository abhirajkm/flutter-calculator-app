import 'package:flutter/material.dart';
import 'package:mynew_flutter_app/screens/mydrawer.dart';
class Division extends StatefulWidget {
  @override
  _DivisionState createState() => _DivisionState();
}

class _DivisionState extends State<Division> {
TextEditingController num1=TextEditingController();
TextEditingController num2=TextEditingController();
double _div=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        drawer: MyDrawer(),
        body: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(controller: num1,decoration: InputDecoration(
                labelText: "num1"
              ),),
              TextField(controller: num2,decoration: InputDecoration(
                labelText: "num2"
              ),),
              SizedBox(height: 20,),
              RaisedButton(color: Colors.lightGreen,onPressed: (){
                var getNum1=double.parse(num1.text);
                var getNum2=double.parse(num2.text);
                setState(() {
                  _div=getNum1/getNum2;
                });
              },child:Text("DIVISION")),
              SizedBox(height: 35,),
              Text("RESULT = " + _div.toString())
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mynew_flutter_app/screens/mydrawer.dart';
class Addition extends StatefulWidget {
  @override
  _AdditionState createState() => _AdditionState();
}

class _AdditionState extends State<Addition> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  int _sum=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        drawer: MyDrawer(),
        body: Container(
          margin: EdgeInsets.all(25),
          child: Column(
            children: [
              TextField(controller: num1,decoration: InputDecoration(
                  labelText: "Enter a number"
              ),),
              SizedBox(height: 15,),
              TextField(controller: num2,decoration: InputDecoration(
                  labelText: "Enter a number"
              ),),
              SizedBox(height: 15,),
              RaisedButton(color: Colors.cyan,onPressed: (){
                var getNum1=int.parse(num1.text);
                var getNum2=int.parse(num2.text);

                setState(() {
                  _sum=getNum1+getNum2;

                });
              },child:Text("ADDITION")),
              SizedBox(height: 25,),
              Text("RESULT = " + _sum.toString(),),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mynew_flutter_app/screens/mydrawer.dart';
class Multiplication extends StatefulWidget {
  @override
  _MultiplicationState createState() => _MultiplicationState();
}

class _MultiplicationState extends State<Multiplication> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  int _mul=0;
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
              TextField(controller: num1,decoration:InputDecoration(
                labelText: "Num1"
              )),
              TextField(controller: num2,decoration:InputDecoration(
                labelText: "Num2"
              )),
              SizedBox(height: 20,),
              RaisedButton(color: Colors.red,onPressed: (){
                var getNum1=int.parse(num1.text);
                var getNum2=int.parse(num2.text);
                setState(() {
                  _mul=getNum1*getNum2;
                });
              },child: Text("MULTIPLICATION"),)
          ,
            SizedBox(height: 30,),
            Text("RESULT = " + _mul.toString())],
          ),
        ),
      ),
    );
  }
}

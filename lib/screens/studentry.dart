import 'package:flutter/material.dart';
import 'package:mynew_flutter_app/screens/mydrawer.dart';
class Studentry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: MyDrawer(),
        body: Container(
          child: Center(child: Text("Student Entry")),
        ),

      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:mynew_flutter_app/screens/division.dart';
import 'package:mynew_flutter_app/screens/multiplication.dart';
import 'package:mynew_flutter_app/screens/sidenav.dart';
import 'package:mynew_flutter_app/screens/subtraction.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("ABHIRAJ"), 
                  accountEmail: Text("abhirajkm@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtly5icigGbHvJeXExu4NUnoMiMvv9t1YS-Q&usqp=CAU"),
              ),
              decoration: BoxDecoration(
                color: Colors.cyan
              ),),
              
              ListTile(
                trailing: Icon(Icons.add),
                title: Text("ADDITION"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Addition()));
                },
              ),
              ListTile(
                trailing: Icon(Icons.minimize),
                title: Text("SUBTRACTION"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Subtraction()));
                },
              ),
              ListTile(
                trailing: Icon(Icons.android_outlined),
                title: Text("MULTIPLICATION"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Multiplication()));
                },
              ),
                ListTile(
                trailing: Icon(Icons.view_sidebar_sharp),
                title: Text("DIVISION"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Division()));
                },
              ),

            ],
          ),


    );
  }
}

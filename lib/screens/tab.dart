import 'package:flutter/material.dart';
import 'package:mynew_flutter_app/screens/contact.dart';
import 'package:mynew_flutter_app/screens/home.dart';
import 'package:mynew_flutter_app/screens/profile.dart';
class tabMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "HOME",icon: Icon(Icons.home),),
                Tab(text: "PROFILE",icon:Icon(Icons.account_box)),
                Tab(text: "CONTACTS",icon:Icon(Icons.sensor_door_rounded)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Home(),
              Profile(),
              Contacts()
            ],
          ),
        ),
      ),
    );
  }
}

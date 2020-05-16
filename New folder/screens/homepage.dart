import 'package:connectivity/connectivity.dart';
import 'package:demo_app/Arrangements/Drawer.dart';
import 'package:demo_app/screens/bottomNavigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './isConnection.dart';

class HomePage extends StatelessWidget
{
  HomePage({this.title,this.uid});
  String title;
  String uid;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      bottomNavigationBar: bottomnavigation(context, 1),
      drawer: theDrawer(context),
      body: Container(
        child: Column(
          children: <Widget>[
            // Text("$title");
            Text("\n\n\n$title"),
            Text("$uid's"),
            ],
        ),
           ),
    );
  }
  

}
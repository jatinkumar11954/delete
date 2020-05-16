import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Arrangements/sizeModification.dart';
import 'package:demo_app/screens/homescreen.dart';

class SelectScreen extends StatefulWidget
{
  @override
  _SelectScreenState createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  @override
  Widget build(BuildContext context) {
    void show() {
    // flutter defined function
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext ctxt) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Exit Page",style: TextStyle(fontSize:SizeConfig.blockSizeVertical * 2.5),),
          content: new Text("Are you sure you want to exit from the APP",style: TextStyle(fontSize: 14.0),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.push(
              ctxt,
              new MaterialPageRoute(builder: (ctxt) => new HomeScreen()),
            );
              },
            ),
            new FlatButton(
              child: new Text("YES, EXIT"),
              onPressed: () {
                exit(0);
                // Navigator.of(context).pop();
              },
            ),
            
          ],
        );
      },
    );
  }
    // TODO: implement build
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.orangeAccent,
      body:WillPopScope(
      onWillPop:()
      {
        // Navigator.pushNamed(context,''),
        show();
      },
      child:Center(
         child:Column(children:<Widget>
        [
        // children: <Widget>[
          new Center(
          child:Column(children: <Widget>[
            Text("\n\n\n\n\n\n\n\n\n\n\n\n\n\n "),
          InkWell(
              onTap: () =>Navigator.pushNamed(context, 'Login'),//write function jp
              child: new Container( 
                //width: 100.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.lime,
                  border: new Border.all(color: Colors.green, width: 5.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),

                child: new Center(child: new Text('Login', style: new TextStyle(fontSize: SizeConfig.blockSizeVertical *3, color: Colors.black),),),
              ),
            ),
            Text("\n"),
          InkWell(
              onTap: () => 
              {
                Navigator.pushNamed(context,'Register'),
              },//write function jp
              child: new Container( 
                //width: 100.0,
               
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.lime,
                  border: new Border.all(color: Colors.green, width: 5.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: new Center(child: new Text('Register', style: new TextStyle(fontSize: SizeConfig.blockSizeVertical *3, color: Colors.black),),),
              ),
            ),
          ],
          ),
          ),
          // new Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   mainAxisSize: MainAxisSize.min,
          //   children: <Widget>[
          //     new FlatButton(
          //       onPressed: (){
          //         Navigator.pushNamed(context,'HomeScreen');
          //       },
          //       color: Colors.grey,
          //       child: Text("Skip"),
          //       )
          //   ],
          // ),
      ],
      ),
    ),

    )
    )
    );
  }
}
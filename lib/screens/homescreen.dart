import 'dart:io';
import 'package:demo_app/Arrangements/Drawer.dart';
import 'package:demo_app/screens/bottomNavigation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import './showImage.dart';
import '../Arrangements/sizeModification.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> 
{
  @override
  Widget build(BuildContext context)
   {
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
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0XFF00099a9),
        title: new Text('CONVERSIONGURU DEMO APP'),
      ),
      drawer: theDrawer(context),
      bottomNavigationBar: bottomnavigation(context,0),
      body:WillPopScope(
      onWillPop:()
      {
        // Navigator.pushNamed(context,''),
        show();
      },
      child:Center(
        child:Column(children:<Widget>
        [

           ShowImage("logo"),
           Text("About",style: TextStyle(fontSize:SizeConfig.blockSizeVertical * 2.5),),
            InkWell(
                    child: new Text('About ConversionGuru',style:TextStyle(fontSize: 20.0,color: Colors.red, decoration: TextDecoration.underline)),
                onTap: () async {
            if (await canLaunch("https://www.conversionguru.in/")) {
              await launch("https://www.conversionguru.in/");
            }
                }
                
                // launch("https://in.linkedin.com/in/jaya-prakash-veldanda-756b48179"),
              ),
            Text("\n\n"),
               RaisedButton(
              color: Colors.orange,
            child: Text("Exit"),
            onPressed: ()
            {
              show();
            },
          ),
          
          Column(children:<Widget>
        [
        //   Padding(
        //      padding: EdgeInsets.only(left: SizeConfig.blockSizeVertical*1.5,right:SizeConfig.blockSizeVertical*1.5 ),
        //  child: RaisedButton(
        //       color: Colors.green,
        //     child: Text("Data testing"),
        //     onPressed: ()
        //     {
        //       Navigator.pushNamed(context,'CheckData');

        //     },
        //   ),
        //   ),

          RaisedButton(
              color: Colors.blue,
            child: Text("Contact Form"),
            onPressed: ()
            {
              Navigator.pushNamed(context,'ContactForm');

            },
          ),
        ],
        ),
        Padding(
             padding: EdgeInsets.only(left: SizeConfig.blockSizeVertical*2.5,right:SizeConfig.blockSizeVertical*1.5 ),
         child: RaisedButton(
              color: Colors.pink,
            child: Text("Contact US"),
            onPressed: ()
            {
              Navigator.pushNamed(context,'ContactUs');

            },
          ),
          ),
        Padding(
             padding: EdgeInsets.only(left: SizeConfig.blockSizeVertical*2.5,right:SizeConfig.blockSizeVertical*1.5 ),
         child: RaisedButton(
              color: Colors.orange,
            child: Text("Select Screen"),
            onPressed: ()
            {
              Navigator.pushNamed(context,'ScreenSelection');

            },
          ),
          ),
        //    Padding(
        //      padding: EdgeInsets.only(left: SizeConfig.blockSizeVertical*2.5,right:SizeConfig.blockSizeVertical*1.5 ),
        //  child: RaisedButton(
        //       color: Colors.blue,
        //     child: Text("Test"),
        //     onPressed: ()
        //     {
        //       Navigator.pushNamed(context,'Test');

        //     },
        //   ),
        //   ),
        ]
        ),
      ),
    ),
    );
   }
}


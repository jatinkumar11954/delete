import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontFamily: "CharterBT",
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: (MediaQuery.of(context).size.height) * 0.025,
    );
    return new Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Movies & Location'),
          ),
          backgroundColor: Colors.green[700],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
               GestureDetector(
                                child: new Card(
          child: new Container(
             height: MediaQuery.of(context).size.height * 0.40,width:MediaQuery.of(context).size.width * 1,
            child: Center(
              child: new Text(
                  'Movies',
                  style:TextStyle(
      fontFamily: "CharterBT",
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: (MediaQuery.of(context).size.height) * 0.080,
    )
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.grey[400],
              image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  image: AssetImage("img/movie.png"),
              ),
            ),
          ),
        ),
         onTap: () => Navigator.pushNamed(context, "Search"),
               ),
                GestureDetector(
                                child: new Card(
          child: new Container(
             height: MediaQuery.of(context).size.height * 0.40,width:MediaQuery.of(context).size.width * 1,
            child: Center(
              child: new Text(
                  'Location',
                  style:TextStyle(
      fontFamily: "CharterBT",
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: (MediaQuery.of(context).size.height) * 0.080,
    )
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.grey[400],
              image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  image: AssetImage("img/location.png"),
              ),
            ),
          ),
        ),
         onTap: () => Navigator.pushNamed(context, "Location"),
               ),
           
         
          ],
        ));
  }
}

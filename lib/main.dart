import 'package:flutter/material.dart';
import 'screens/Result.dart';
import 'screens/Search.dart';
import 'screens/location.dart';
import 'package:Activity/screens/home.dart';

void main() => runApp(Activity());

class Activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parses Sample',
      home: Home() ,
       routes: <String, WidgetBuilder>{
          'Search': (BuildContext context) => new Search(),
          'Result': (BuildContext context) => new Result(),
          'Location': (BuildContext context) => new Location(),
       }
    );
  }
}
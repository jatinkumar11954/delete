import 'package:demo_app/screens/Data/Register.dart';
import 'package:demo_app/screens/Data/contactForm.dart';
import 'package:demo_app/screens/bottomNavigation.dart';
import 'package:demo_app/screens/test.dart';
import 'package:flutter/material.dart';
import './screens/homescreen.dart';
import './Screens/isConnection.dart';
import './screens/Data/CheckingData.dart';
import './screens/selectScreen.dart';
import './screens/Data/signIn.dart';
import './screens/contactUs.dart';
// import 'package:firebase_database/ui/firebase_animated_list.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() {
  // runApp(new myapp());
  runApp(new myapp());
}

class myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new IsConnection(),
    theme: ThemeData(
      primaryColor: Colors.indigo,
      backgroundColor: Colors.grey,
    ),
    routes: <String, WidgetBuilder>{
     'HomeScreen': (BuildContext context) => new HomeScreen(),
     'CheckData': (BuildContext context) => new CheckData(),
     'ScreenSelection':(BuildContext context) => new SelectScreen(),
     'Register':(BuildContext context) => new Register(),
     'ContactForm':(BuildContext context) => new ContactForm(),
    //  'BottomNavigation':(BuildContext context) => new BottomNavigation(),
     'SignIn':(BuildContext context) => new SignIn(),
     'ContactUs':(BuildContext context) => new ContactUs(),
    //  'Test':(BuildContext context) => new Test(),
      
    },
  );
  }

}
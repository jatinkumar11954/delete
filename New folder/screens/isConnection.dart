import 'dart:async';
import 'dart:io';
import 'package:connectivity/connectivity.dart';
import 'package:demo_app/Arrangements/sizeModification.dart';
import 'package:demo_app/Screens/contactUS.dart';
import 'package:demo_app/screens/Data/Account.dart';
import 'package:demo_app/screens/Data/contactForm.dart';
import 'package:demo_app/screens/Data/login.dart';
import 'package:demo_app/screens/Data/signIn.dart';
import 'package:demo_app/screens/bottomNavigation.dart';
import 'package:demo_app/screens/cart.dart';
import 'package:demo_app/screens/help.dart';
import 'package:demo_app/screens/logout.dart';
import 'package:demo_app/screens/privacy.dart';
import 'package:demo_app/screens/showImage.dart';
import 'package:demo_app/screens/test.dart';
import './Data/CheckingData.dart';
import './splashScreen.dart';
import 'package:flutter/material.dart';
import './homescreen.dart';
import './imageNoNet.dart';
import './selectScreen.dart';
import './Data/Register.dart';
class IsConnection extends StatefulWidget {
  @override
  _IsConnection createState() => _IsConnection();
}

class _IsConnection extends State<IsConnection> {
  Map _source = {ConnectivityResult.none: false};
  MyConnectivity _connectivity = MyConnectivity.instance;

  @override
  void initState() {
    super.initState();
    _connectivity.initialise();
    _connectivity.myStream.listen((source) {
      setState(() => _source = source);
    });
  }

  @override
  Widget build(BuildContext context)
  {
    if (_source.keys.toList()[0] == ConnectivityResult.none)
     {
      print("noooo");
      return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: new AppBar(
          title: new Text("Conversion Guru"),
        ),
        body: WillPopScope(
        //Wrap out body with a `WillPopScope` widget that handles when a user is cosing current route
        onWillPop: () {
          exit(0);
        },
        child:Center(
          child: Column(
            children: <Widget>[
            Text("\n\tNo Internet!! Please connect and \ntry again with proper Network.",textDirection: TextDirection.ltr,style:TextStyle(fontSize:20.0,color: Colors.red),),
              ShowImageWhenNoInternet("noInternet"), 
          RaisedButton(
             child: Text("Retry"),
             color: Colors.green,
             onPressed: ()
             {
               IsConnection();
             },
                 ),
              ]
              )
              ),
              ),
              ),
);

     
     }
    else{
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Splash(),
        routes: <String, WidgetBuilder>{
         'HomeScreen': (BuildContext context) => new HomeScreen(),
        'CheckData': (BuildContext context) => new CheckData(),
        'ScreenSelection':(BuildContext context) => new SelectScreen(),
        'Register':(BuildContext context) => new Register(),
        'ContactForm':(BuildContext context) => new ContactForm(),
        // 'BottomNavigation':(BuildContext context) => new BottomNavigation(),
        'SignIn':(BuildContext context) => new SignIn(),
        'ContactUs':(BuildContext context) => new ContactUs(),
        'Test':(BuildContext context) => new Test(),
        'Cart':(BuildContext context) => new Cart(),
        'AccountInfo':(BuildContext context) => new AccountInfo(),
        'Help':(BuildContext context) => new Help(),
        'Privacy':(BuildContext context) => new Privacy(),
        'Login': (BuildContext context) => new LoginPage(),
        'Logout': (BuildContext context) => new Logout(),

    },
  );
    }
    
  }

  @override
  void dispose() {
    _connectivity.disposeStream();
    super.dispose();
  }
}



class MyConnectivity {
  MyConnectivity._internal();

  static final MyConnectivity _instance = MyConnectivity._internal();

  static MyConnectivity get instance => _instance;

  Connectivity connectivity = Connectivity();

  StreamController controller = StreamController.broadcast();

  Stream get myStream => controller.stream;

  void initialise() async {
    ConnectivityResult result = await connectivity.checkConnectivity();
    _checkStatus(result);
    connectivity.onConnectivityChanged.listen((result) {
      _checkStatus(result);
    });
  }

  void _checkStatus(ConnectivityResult result) async {
    bool isOnline = false;
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        isOnline = true;
      } else
        isOnline = false;
    } on SocketException catch (_) {
      isOnline = false;
    }
    controller.sink.add({result: isOnline});
  }

  void disposeStream() => controller.close();
}

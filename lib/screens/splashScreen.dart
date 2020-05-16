import 'package:demo_app/screens/homepage.dart';
import 'package:demo_app/screens/homescreen.dart';
// import 'package:demo_app/Arrangements/Drawer.dart';
import 'package:demo_app/screens/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../Arrangements/sizeModification.dart';
import './selectScreen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  // BuildContext context;
  //  var status= StatusProvider.of(context);

  // bool _islogin;
  // startTime() async {
  //   var _duration = new Duration(seconds: 3);
  //   return new Timer(_duration, navigationPage);
  // }

  // void navigationPage() {
  //   Navigator.of(context).pushReplacementNamed('HomeScreen');
  // }

  @override
  initState() {
    FirebaseAuth.instance
        .currentUser()
        .then((currentUser) => {
              if (currentUser == null)
                {
                  // status._islogin=false,
                  print("jp no user ra"),
                  Navigator.pushReplacementNamed(context, "Login")
                }
              else
                {
                  
                  print("jp user yes ra"),
                  // Navigator.pushNamed(context, "Homescreen"),
                  Firestore.instance
                      .collection("users")
                      .document(currentUser.uid)
                      .get()
                      .then((DocumentSnapshot result) =>
                         
                         Navigator.pushNamed(context,"HomeScreen"),
                                      )
                      .catchError((err) => print(err))
                }
            })
        .catchError((err) => print(err));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:Stack(
      fit: StackFit.expand,
        children: <Widget>[
            new SplashScreen(
                seconds: 4,
                backgroundColor: Colors.lime,
                image: Image.asset('images/logo.png'),
                photoSize:  SizeConfig.blockSizeVertical*30.0,
                title: Text("Welcome to ConversionGuru",style:TextStyle(fontSize: SizeConfig.blockSizeVertical *3.0,color:Colors.deepOrange),),
                loaderColor: Colors.green,
                navigateAfterSeconds: new SelectScreen(),
              ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Powered By ConversionGuru', style: TextStyle(decorationColor:Colors.green,fontSize: SizeConfig.blockSizeVertical * 2.5,backgroundColor:Colors.white)),
              Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                // child: new Image.asset(
                //   'assets/dff.png',
                //   height: 40.0,
                //   fit: BoxFit.scaleDown,
                // ),
              )
            ],
          ),
    // return new Scaffold(
    //   body: Center(
    //     child: new Image.asset("images/logo.png"),
    //   )
    // );
    ],



  //  height: SizeConfig.blockSizeVertical * 20,
  //  width: SizeConfig.blockSizeHorizontal * 50,


      ),
    );
  }
}


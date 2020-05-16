import 'package:demo_app/Arrangements/Drawer.dart';
import 'package:demo_app/Arrangements/sizeModification.dart';
import 'package:demo_app/screens/bottomNavigation.dart';
import 'package:demo_app/screens/homepage.dart';
import 'package:demo_app/screens/status.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  TextEditingController emailInputController;
  TextEditingController pwdInputController;
  int yes;

  @override
  initState() {
    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();
    super.initState();
  }

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Email format is invalid';
    } else {
      return null;
    }
  }

  String pwdValidator(String value) {
    if (value.length < 8) {
      return 'Password must be longer than 8 characters';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    // var status= StatusProvider.of(context);
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        bottomNavigationBar: bottomnavigation(context,1),
        drawer: theDrawer(context),
        body:WillPopScope(
              onWillPop:()
              {
                Navigator.pushNamed(context,'HomeScreen');       
               },
          child: Container(
             margin: EdgeInsets.all(SizeConfig.blockSizeVertical*2.5),
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _loginFormKey,
              child: ListView(
                children: <Widget>[
                   Padding(
                       padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*2.5,bottom:SizeConfig.blockSizeVertical*2.5 ),  
                     child:TextFormField(
                    decoration: InputDecoration(
                       labelStyle:textStyle,
                        labelText: 'Email',
                        hintText: "Enter your email id eg:jp@gmail.com ",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*2.5)
                            ),
                          ),
                    controller: emailInputController,
                    keyboardType: TextInputType.emailAddress,
                    validator: emailValidator,
                  ),),
                     Padding(
                       padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*2.5,bottom:SizeConfig.blockSizeVertical*2.5 ),
                          child:TextFormField(
                      decoration: InputDecoration(
                       labelStyle:textStyle,
                        labelText: 'Password', hintText: "Enter Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
                            ),
                            ),
                    controller: pwdInputController,
                    obscureText: true,
                    validator: pwdValidator,
                  ),
                  ),
                  RaisedButton(
                    child: Text("Login"),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.black,
                    onPressed: () {
                      if (_loginFormKey.currentState.validate()) {
                        // status._isLogin=true;
                        print("after validation");
                        FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: emailInputController.text,
                                password: pwdInputController.text)
                            .then((currentUser) => Firestore.instance
                                .collection("users")
                                .document(currentUser.uid)
                                .get()
                                .then(
                                  (DocumentSnapshot result) =>Navigator.pushReplacementNamed(context, "HomeScreen"),
                                            )
                                .catchError((err) => print(err)))
                            .catchError((err) => print(err));
                      }
                       else{
                        print("no username or password wrong");
                        Text("No Username, Password ");
                      }
                    },
                  ),
                  Text("\nDon't have an account yet?"),
                  FlatButton(
                    child: Text("->Register here!<-",style:TextStyle(fontSize: 20.0,color: Colors.red, decoration: TextDecoration.underline)),
                    onPressed: () {
                      Navigator.pushNamed(context, "Register");
                    },
                  )
                ],
              ),
            )))
    );
  }
}

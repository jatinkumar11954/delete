import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo_app/Arrangements/Drawer.dart';
import 'package:demo_app/Arrangements/sizeModification.dart';
import 'package:demo_app/screens/bottomNavigation.dart';
import 'package:demo_app/screens/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';



class SignIn extends StatefulWidget
{
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
 final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  TextEditingController emailInputController;
  TextEditingController pwdInputController;

  @override
  initState() {
    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

 void Suck() {
    // flutter defined function
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext ctxt) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Signed in successfully",style: TextStyle(fontSize:SizeConfig.blockSizeVertical * 2.5),),
          content: new Text("You are successfully signed in you can proceed ",style: TextStyle(fontSize:SizeConfig.blockSizeVertical * 1.7),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            // new FlatButton(
            //   child: new Text("Home"),
            //   onPressed: () {
            //     // Navigator.of(context).pop();
            //    Navigator.pushNamed(context, 'HomeScreen');
            //   },
            // ),
            // new FlatButton(
            //   child: new Text("YES, EXIT"),
            //   onPressed: () {
                
            //     // Navigator.of(context).pop();
            //   },
            // ),
            
          ],
        );
      },
    );
  }


     TextStyle textStyle = Theme.of(context).textTheme.title;
    // TODO: implement build
   return new Scaffold(
                  // resizeToAvoidBottomPadding: false,
                  appBar: AppBar(
                    title: Text("Sign In"),
                    backgroundColor: Colors.orangeAccent,
                  ),
                  drawer: theDrawer(context),
                  bottomNavigationBar: bottomnavigation(context,0),
                  body:WillPopScope(
                  onWillPop:()
                  {
                    Navigator.pushNamed(context,'HomeScreen');
                    
                  },
                  child: Container(
                  
                    margin: EdgeInsets.all(SizeConfig.blockSizeVertical*1.5),
                    child: ListView(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
                          child:TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            validator: emailValidator,
                            style:textStyle,
                            controller: emailInputController,
                          // keyboardType: Text(),
                          decoration: InputDecoration(
                            labelStyle:textStyle,
                            labelText: "Email id ",
                            hintText: "Enter your Email Id (user) ",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
                            ),
                          ),
                          ),
                        ),
                     Padding(
                          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
                          child:TextFormField(
                            style:textStyle,
                            validator: passwordValidator,
                            controller: pwdInputController,
                          // keyboardType: Text(),
                          decoration: InputDecoration(
                            labelStyle:textStyle,
                            labelText: "Password",
                            hintText: "Enter your Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
                            ),
                          ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*5,bottom:SizeConfig.blockSizeVertical*1.5 ),
                          child:FlatButton(
                          child: Text("Sign In"),
    
                          color: Colors.green,
                          // onPressed: ()
                          // {     print("no");
                          //     //   Scaffold.of(context).showSnackBar(SnackBar(
                          //     //   content: Text('Successfully registered '),
                          //     //   duration: Duration(seconds: 3),
                          //     // )
                          //     // );
                          //     Suck();

                          // },
                          onPressed: () {
                      if (_loginFormKey.currentState.validate()) {
                        print("in sign in");
                        FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: emailInputController.text,
                                password: pwdInputController.text)
                            .then((currentUser) => Firestore.instance
                                .collection("users")
                                .document(currentUser.uid)
                                .get()
                                .then((DocumentSnapshot result) =>
                                
                            //         Navigator.pushReplacement(
                            //             context,
                            //             MaterialPageRoute(
                            //                 builder: (context) => HomePage(
                            //                       title: result["fname"] +
                            //                           "'s Tasks",
                            //                       uid: currentUser.uid,
                            //                     ))))
                            //     .catchError((err) =>print("wrong password")))
                            // .catchError((err) => print("wrong password"));
                            Navigator.pushNamed(context, "HomeScreen")));
                            // yes=1;
                      }
                      else{
                        print("no username or password wrong");
                        Text("No Username, Password ");
                      }
                    },
                          )
                        ),
                        // if(yes!=1)
                        
                      ],
                    ),
                    ),
                    
                  ),
                    );

  }
                                String emailValidator(String value) {
                                  Pattern pattern =r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                    RegExp regex = new RegExp(pattern);
                                    if (!regex.hasMatch(value)) {
                                      return 'Email format is invalid';
                                    } else {
                                      return null;
                                        }                       

                                } 

                                String passwordValidator(String value) {
                                  if (value.length < 8) {
                                    return 'Password must be longer than 8 characters';
                                  } else {
                                    return null;
                                  }
                                }


}
import 'package:demo_app/screens/status.dart';
import 'package:demo_app/screens/status.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:demo_app/Screens/splashScreen.dart';


// Widget theDrawer(BuildContext context)
// {
//   var status= StatusProvider.of(context);
//   return _theDrawer(context,status);
// }



Widget theDrawer(BuildContext context)
{

// String status;
  bool _isLogin=false;
  // print(_isLogin);
  FirebaseAuth.instance
        .currentUser()
        .then((currentUser) => {
              if (currentUser != null)
                {
                  _isLogin=true,
                  // status="Login",
                  print("jp user yes ra in drawer"),
                  print(_isLogin),
  
                }
              // else
              //   {
              //     _isLogin=false,
              //     // status="Logout",
              //     print("jp no user ra in drawer"),
              //     // Navigator.pushNamed(context, "Homescreen"),
              //   }
            })
        .catchError((err) => print(err));
  // var status= StatusProvider.of(context);
  // theDrawer({this._isLogin});
  // if(param1==null)
  // {
  //   param1=false;
  // }
  // bool _islogin=param1;


  //  TextStyle newStyle = TextStyle(
  //   fontSize: 15,
  //   fontWeight: FontWeight.normal
  // );

  //  _islogin;
    return Drawer(
          child: new ListView(
            children: <Widget>[
            //  Text(checkLogin()),
            //  FlatButton(),
                           // new DrawerHeader(
                             
                           //   child: Column(
                           //     children: <Widget>[
                           //       // new Container(
                           //       //   height: 120,
                           //        Text("LOGIN",style: TextStyle(),),
                           // decoration: BoxDecoration(
                               // color: Colors.blue,
                             // ),
                           //       //  color: Colors.white, fontWeight: FontWeight.normal
                           //       // ),
                           //     ],
                           //   ),
                           // ),
                           // Widget:CheckLoginStatus,
                            new ListTile(
                             // title: new Text("Login/Register",style: newStyle),
                             title: new Text("Login/Register"),
                             leading: Icon(Icons.lock,color: Colors.black,),
                             onTap: () {
                               Navigator.pushNamed(context, 'Login');
                             },
                           ),
                           new ListTile(
                             leading: Icon(Icons.account_box,color:Colors.green),
                             title: new Text("My Account"),
                             // title: new Text('My Account',style:TextStyle(color:Colors.black),),
                             onTap: () {
                               Navigator.pushNamed(context,'AccountInfo');
                             },
                           ),
                           // new Divider(),
                           new ListTile(
                             leading: new Icon(Icons.call,color: Colors.red,),
                             title: new Text('Contact Us'),
                             onTap: () {
                               Navigator.pushNamed(context, "ContactUs");
                             },
                           ),
                           new ListTile(
                             
                             title: new Text('Live Chat'),
                             leading: new Icon(Icons.chat_bubble_outline),
                             onTap: () {
               
                             //  var whatsappUrl ="whatsapp://send?phone=$phone";
                         canLaunch("whatsapp://send?phone=0919010590693") != null? launch("whatsapp://send?phone=0919010590693"):print("open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
               // need to work if it wont work
                             },
                           ),
                           new ListTile(
                             leading: new Icon(Icons.edit),
                             title: new Text('Contact Form'),
                             onTap: () {
                               Navigator.pushNamed(context, 'ContactForm');
                             },
                           ),
                           // new Divider(color:Colors.red,),
                           new ListTile(
                             leading: new Icon(Icons.live_help),
                             title: new Text('Help'),
                             onTap: () {
                               Navigator.pushNamed(context, 'Help');
                             },
                           ),
                            new ListTile(
                             title: new Text('Privacy Policy'),
                             onTap: () {
                               Navigator.pushNamed(context,'Privacy');
                             },
                           ),
             
                          //  new ListTile(
                          //     title: new Text((_isLogin==true)?"Logout":""),
                          //    // title: new Text(status),
                          //    onTap: () {
                          //      print(_isLogin);
                          //      if(_isLogin==true)
                          //      {
                          //          print("logging out");
                          //        // _isLogin=false;
                          //        FirebaseAuth.instance
                          //      .signOut()
                          //      .then((result) =>
                          //          Navigator.pushReplacementNamed(context, "HomeScreen"))
                          //      .catchError((err) => print(err));
                                
                          //      }
                          //      else{
                          //       print("logging in");
                          //        Navigator.pushNamed(context,'Login');
                          //      }
                          //    },
                          //  ),
                           //  new ListTile(
                           //    title: new Text((_isLogin!=true)?"Login":""),
                           //   // title: new Text(status),
                           //   onTap: () {
                           //     Navigator.pushNamed(context,'Login');
                           //   }
                           //  ),
                         //   new ListTile(
                         //     title: new Text(_isLogin?"LogOut":"Login"),
                         //     onTap: () {
                         //     if(status._islogin==true){
                         //       status._islogin=false;
                         //     FirebaseAuth.instance
                         //       .signOut()
                         //       .then((result) =>
                         //           Navigator.pushReplacementNamed(context, "HomeScreen"))
                         //       .catchError((err) => print(err));  
                         //     }
                         //     else
                         //     {
                         //         Navigator.pushNamed(context,"Login");
                         //     }
                         //          },
             
                         // ),
             
                         // new ListTile(
                         //   title: new Text('Logout'),
                         //   onTap: () {
                         //     FirebaseAuth.instance
                         //       .signOut()
                         //       .then((result) =>
                         //           Navigator.pushReplacementNamed(context, "Login"))
                         //       .catchError((err) => print(err));     },
                         //                 ),
                                         
                                       ],
                                     ),
                                     );
                             }
             
            //  String checkLogin() {
            // if(FirebaseAuth.instance.currentUser() != null){
            //   return "Logout";

            // }
            // else if(FirebaseAuth.instance.currentUser() == null)
            // {
            //   return "Login";
            // }
        
            
            
            
            // }


                


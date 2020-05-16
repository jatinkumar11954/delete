import 'package:demo_app/Arrangements/Drawer.dart';
import 'package:demo_app/screens/bottomNavigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Arrangements/sizeModification.dart';

class Test extends StatefulWidget
{
  
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Drawer includes"),
      ),
      bottomNavigationBar: bottomnavigation(context, 0),
      backgroundColor: Colors.orangeAccent,
      drawer: theDrawer(context),
      body:Stack(
      fit: StackFit.expand,
        children: <Widget>[
          new Center(
          child:Column(children: <Widget>[
            Text("\n\n\n\n\n\n\n\n\n\n\n\n\n\n "),
          InkWell(
              onTap: () =>Navigator.pushNamed(context, 'SignIn'),//write function jp
              child: new Container( 
                //width: 100.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.lime,
                  border: new Border.all(color: Colors.green, width: 5.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),

                child: new Center(child: new Text('Sign in', style: new TextStyle(fontSize: SizeConfig.blockSizeVertical *3, color: Colors.black),),),
              ),
            ),
            Text("\n"),
          // InkWell(
          //     onTap: () => 
          //     {
          //       Navigator.pushNamed(context,'Register'),
          //     },//write function jp
          //     child: new Container( 
          //       //width: 100.0,
               
          //       height: 50.0,
          //       decoration: new BoxDecoration(
          //         color: Colors.lime,
          //         border: new Border.all(color: Colors.green, width: 5.0),
          //         borderRadius: new BorderRadius.circular(10.0),
          //       ),
          //       child: new Center(child: new Text('Register', style: new TextStyle(fontSize: SizeConfig.blockSizeVertical *3, color: Colors.black),),),
          //     ),
          //   ),
          ],
          ),
          ),
         
      ],
      ),
    ),

    );
  }
}







// import 'package:demo_app/Screens/homescreen.dart';
// import 'package:demo_app/Screens/isConnection.dart';
// import 'package:demo_app/Screens/selectScreen.dart';
// import 'package:demo_app/screens/test.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/material.dart';
//   Widget bottomnavigation(BuildContext context,int index) {
    
//       return BottomNavigationBar(
//         onTap:(index)
//            {
//              switch(index)
//              {
//                case 0:
//                {
//                  Navigator.pushNamed(context, 'HomeScreen');
//                  break;
//                }
//                case 1:
//                {
//                  Navigator.pushNamed(context, 'ContactUs');
//                  break;
//                }
               
//                case 2:
//                {
//                  Navigator.pushNamed(context, 'Register');
//                  break;
//                }
   
//              }
   
   
//            },
   
//          type: BottomNavigationBarType.fixed,
//          currentIndex: index,
//          items: 
//         //  <BottomNavigationBarItem>
//          [
//              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home'),),
//              BottomNavigationBarItem(
//                  icon: Icon(Icons.contacts), title: Text('Contact us')),
//              BottomNavigationBarItem(
//                  icon: Icon(Icons.shopping_cart), title: Text('Cart')),
//            ],
//            fixedColor: Colors.orange,
          
//                    // onTap: onItemTapped,
//                );
                  
        
// }
        
//           // onItemTapped(int index) {
//           //   Navigator.pushNamed(context,'HomeScreen');
//           //   setState(() {
//           //     currentTab=index;
//           //   });
//           // }

import 'package:amul/car.dart';
import 'package:amul/delete.dart';
import 'package:amul/image.dart';
import 'package:amul/size.dart';
import 'package:amul/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
   
      //   primarySwatch: Colors.blue,
      // ),
      home: MyHomePage(title: 'Doo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:Container(
    //  child:Form(
    child: ListView(
      
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Stack(
            //   children: <Widget>[
                
            //   ],
            // ),
            // child: Form(
            // child: ListView(
            // //   children: <Widget>[
            // Column(
            //   // mainAxisAlignment: MainAxisAlignment.center,
            //   // mainAxisSize: MainAxisSize.min,
            //   children: <Widget>[
            //     // Text("\n\n\n"),
            //     ShowImage("logo"),
            //     // Text("hai yy"),
            //   ],
            // ),
            // ShowImage("logo"),
            Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              // mainAxisSize: MainAxisSize.min,
              
              children: <Widget>[
                // Text("\n\n\n\n\n\n"),
                Padding(

                  padding: EdgeInsets.only(top:SizeConfig.blockSizeVertical * 15,bottom: 3),
                child:ShowImage("logo"),
                ),
                 Padding(

                  padding: EdgeInsets.only(top:SizeConfig.blockSizeVertical * 10,bottom:5),
                  child: Text("Start DOOing with DOO.it",style:TextStyle(color:Colors.black,fontSize: SizeConfig.blockSizeVertical * 3)),
                 ),
                //  Padding(
                //        padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*0.5,bottom:SizeConfig.blockSizeVertical*2.5 ),
                //           child:TextFormField(
                //       decoration: InputDecoration(
                //       //  labelStyle:textStyle,
                //         labelText: 'Password', hintText: "Enter Password",
                //             border: OutlineInputBorder(
                //               borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
                //             ),
                //             ),
                //     // controller: pwdInputController,
                //     obscureText: true,
                //     // validator: pwdValidator,
                //   ),
                //   ),
                // Row(
                //   children: <Widget>[
                //     // Text("9"),
                //     TextFormField(
                //       decoration: InputDecoration(
                //             // labelStyle:textStyle,
                //             labelText: "Phone  Number",
                //             hintText: "Enter your mobile number",
                //       )
                //     )
                //   ],
                // ),
                Padding(
                  padding: EdgeInsets.only(left:SizeConfig.blockSizeVertical * 4,top:SizeConfig.blockSizeVertical * 2,bottom:5,right:SizeConfig.blockSizeVertical*5),
                  
                 child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                            // labelStyle:textStyle,
                            labelText: "Phone  Number",
                            hintText: "Enter your mobile number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                            )
                    )
                 
                  )
                  ),


                // Padding(
                //   padding: EdgeInsets.only(top:SizeConfig.blockSizeVertical * 2,bottom:SizeConfig.blockSizeVertical * 4),
                //   child: RaisedButton(
                //       color: Colors.red,
                //       child: Text("START PAGE",style: TextStyle(color: Colors.white,fontSize: SizeConfig.blockSizeVertical * 4),),
                //       onPressed: (){
                //         // Navigator.push(context, route)
                //         Navigator.push(
                //         context,
                //         new MaterialPageRoute(builder: (ctxt) => new CarouselDemo()),
                //       );
                //       },
                      
                //     )),
                    Padding(
                  padding: EdgeInsets.only(top:SizeConfig.blockSizeVertical * 2,bottom:SizeConfig.blockSizeVertical * 4),
                  child: RaisedButton(
                      color: Colors.red,
                      child: Text("Start Page",style: TextStyle(color: Colors.white,fontSize: SizeConfig.blockSizeVertical * 4),),
                      onPressed: (){
                        // Navigator.push(context, route)
                        Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (ctxt) => new SimpleTab()),
                      );
                      },
                      
                    )),
              ],
            ),
            // Column(
              
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   mainAxisSize: MainAxisSize.min,
            //   children: <Widget>[
                
            //   ],
            // )
            
            // Text(
            //   'You have pushed the button this many times:',
            // ),
            
           
          ],
        ),
     ),
    //  )
    );
  }
}



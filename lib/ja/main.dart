import 'package:demo_app/screen/tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Arrangements/size.dart';
import 'image.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitUp,
  ]);
  // runApp(new myapp());
  runApp(new app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(backgroundColor: Colors.white),
      
      debugShowCheckedModeBanner: false,
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
      body: Column(
        children: <Widget>[
          new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // color:Colors.white,
              // height: 100.0,
              // padding:EdgeInsets.only(top:25.0,left: 14.5,right:2.5 ),
              children: [
                new Container(
                  padding: EdgeInsets.only(
                      top: 38.0, left: 14.5, right: 2.5, bottom: 20.0),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.asset('image/2ndscreenlogo.png'),
                      ),
                      Expanded(
                        child: Text(
                          "Delhi NCR",
                          style: TextStyle(fontSize: 22.5),
                        ),
                      ),
                      Expanded(
                        child: Image.asset('image/userimg.png'),
                      ),
                    ],
                  ),  
                ),
                // new Container(
                //   height: 10.0,
                //   padding: EdgeInsets.only(
                //      top:2.0, left: 14.5, right: 2.5),
                  
                
                //   // child: new SimpleTab(),
                // ) ,
                // // new Container(
                //   padding: EdgeInsets.only(left: 14.5, right: 20.5),
                //   child: new Row(
                //     children: [
                //       new Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,

                //         // mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Text(
                //             "Workout",
                //             style: TextStyle(
                //               color: Colors.black54,
                //               fontSize: 28.5,
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ),
                //         ],
                //       ),
                //       new Column(
                //         mainAxisAlignment: MainAxisAlignment.end,
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Text(
                //             "Packages",
                //             style: TextStyle(
                //               color: Colors.black38,
                //               fontSize: 28.5,
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        //   new Container(
        //     padding: EdgeInsets.only(top:10.0,left: hori*(2.5), right: verti*(1.5)
        //     child: new Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: <Widget>[
        //         new Container(
        //           padding: EdgeInsets.only(left: hori*(2.5), right: verti*(1.5),
        //           child: Image.asset('image/today.png'),
        //         ),
        //         new Container(
        //           padding: EdgeInsets.only(left: hori*(2.5), right: verti*(1.5),
        //           child: Image.asset('image/tomorow.png'),
        //         ),
        //       ],
        //     ),
        //   ),
         new Container(
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
        
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.account_circle,
              size: 64.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Gold Trainer Session",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0),
                        ),
                        Text(
                          "Wed 30 Nov, 8.00 A.M. Fusion Gym",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Text(
                        "CANCEL",
                        style: TextStyle(
                            color: Colors.red, fontSize: 16.0),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      Divider(),
            ],
        ),
      

       ],
      ),

    );

    expanded({Image child}) {}
  }
}

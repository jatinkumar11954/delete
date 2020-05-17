import 'package:carousel_slider/carousel_slider.dart';
// import 'package:amul/car.dart';
import 'package:image.dart';
import 'package:size.dart';
import 'package:flutter/material.dart';

class SimpleTab extends StatelessWidget {

  Widget CallCarousel(){
    CarouselSlider carouselSlider;
    int _current = 0;
    List imgList = [
    // 'https://drive.google.com/file/d/146DAUne93sqGkvbJ3eQJcmRsRBcFYI8h/view?usp=sharing',
    
    'https://images.unsplash.com/photo-1507398941214-572c25f4b1dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=966&q=80',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7qiT5iSpc7oLd55tPkngs1hQ9-BFV2r7vFpdJhWeJ-siD3VtXAw&s',
    'https://images.unsplash.com/photo-1554344728-7560c38c1720?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
    'https://images.unsplash.com/photo-1540558870477-e8c59bf88421?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnnR4uMtq7t1TyzbICBT0RNi7wZVTlu9Vnr3XzkGO281fnnIV9&s',
    // 'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    // 'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    // 'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    // 'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    // 'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  return Scaffold(
      resizeToAvoidBottomPadding: false ,
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: ListView(
        children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(
              height: 200.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 4),
              autoPlayAnimationDuration: Duration(milliseconds: 4000),
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              // onPageChanged: (index) {
              //   setState(() {
              //     _current = index;
              //   });
              // },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      // width: MediaQuery.of(context).size.width,
                      // margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.redAccent : Colors.green,
                  ),
                );
              }),
            ),
          
          ],
        ),
        ],
      ),
    );


  }


  @override
  Widget build(BuildContext context) {
    textStyle() {
      return new TextStyle(color: Colors.red, fontSize: 30.0);
    }

    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
        resizeToAvoidBottomPadding: false ,
        appBar: new AppBar(
          actions: <Widget>[
            Row(children: <Widget>[
              ShowImage("logo"),
              Text("Delhi NCR"),
               ShowImage("userimg"),
            ],),
           
          ],
          // backgroundColor: Colors.white,
          // title: new Text("Smiple Tab Demo"),
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(
                // ShowImage("wf"),
                text: "Workout",
              ),
              // new Tab(
              //   text: "Second",
              // ),
              new Tab(
                text: "Packages",
              ),
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new Container(
              color: Colors.white,
              child: new Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height/10,
                      child:Row(
                        children: <Widget>[
                          SizedBox(
                            // height: MediaQuery.of(context).size.longestSide/2,
                          child: RaisedButton(
                            color: Colors.indigo,
                            child: Text("Active Packs",style: TextStyle(color:Colors.white,fontSize: 20.0),),
                            onPressed: (){},
                          ),),
                          Text(" "),
                          SizedBox(
                            // height: MediaQuery.of(context).size.longestSide/2,
                          child: RaisedButton(
                            color: Colors.indigoAccent,
                            child: Text("5 Silver Trainer Session(ST)",style: TextStyle(color:Colors.white,fontSize:SizeConfig.blockSizeVertical * 2.5)),
                            onPressed: (){},
                          ),),
                          
                        ],
                      )
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height/3,
                      child: CallCarousel(),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height/10,
                      child: Row(
                        children: <Widget>[
                          Text("           "),
                          OutlineButton(
                            // color: Colors.white,
                            child: Text("7:00 AM"),
                            onPressed: (){

                            },
                          ),
                          Text("    "),
                          OutlineButton(
                            // color: Colors.white,
                            child: Text("6:00 AM"),
                            onPressed: (){

                            },
                          ),
                          Text("     "),
                          OutlineButton(
                            // color: Colors.white,
                            child: Text("More"),
                            onPressed: (){

                            },
                          ),

                        ],
                      ),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height/20,
                      child: Row(
                        children: <Widget>[
                          Text(" UPCOMING",style: TextStyle(color:Colors.black,fontSize:SizeConfig.blockSizeVertical * 2.5))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height/10,
                      child:Row(
                        children: <Widget>[
                          Text(" COMPLETED",style: TextStyle(color:Colors.black,fontSize:SizeConfig.blockSizeVertical * 2.5))
                        ],
                      ),
                    ),
                     SizedBox(
                      height: MediaQuery.of(context).size.height/10,
                      child:FlatButton(
                        child: Text("WORKOUT PAGE 1",style:TextStyle(color:Colors.white,fontSize:SizeConfig.blockSizeVertical * 3.5),),
                        color: Colors.red,
                        onPressed: (){},
                      ),
                    ),
                    
                  ],
                )
                
              ),
            ),
            new Container(
              color: Colors.white,
              child: new Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height/10,
                      child:Row(
                        children: <Widget>[
                          SizedBox(
                            // height: MediaQuery.of(context).size.longestSide/2,
                          child: RaisedButton(
                            color: Colors.indigo,
                            child: Text("Active Packs",style: TextStyle(color:Colors.white,fontSize: 20.0),),
                            onPressed: (){},
                          ),),
                          Text(" "),
                          SizedBox(
                            // height: MediaQuery.of(context).size.longestSide/2,
                          child: RaisedButton(
                            color: Colors.indigoAccent,
                            child: Text("5 Silver Trainer Session(ST)",style: TextStyle(color:Colors.white,fontSize:SizeConfig.blockSizeVertical * 2.5)),
                            onPressed: (){},
                          ),),
                          
                        ],
                      )
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height/3,
                      child: CallCarousel(),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height/10,
                      child: Row(
                        children: <Widget>[
                          Text("           "),
                          OutlineButton(
                            // color: Colors.white,
                            child: Text("7:00 AM"),
                            onPressed: (){

                            },
                          ),
                          Text("    "),
                          OutlineButton(
                            // color: Colors.white,
                            child: Text("6:00 AM"),
                            onPressed: (){

                            },
                          ),
                          Text("     "),
                          OutlineButton(
                            // color: Colors.white,
                            child: Text("More"),
                            onPressed: (){

                            },
                          ),

                        ],
                      ),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height/20,
                      child: Row(
                        children: <Widget>[
                          Text(" UPCOMING",style: TextStyle(color:Colors.black,fontSize:SizeConfig.blockSizeVertical * 2.5))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height/10,
                      child:Row(
                        children: <Widget>[
                          Text(" COMPLETED",style: TextStyle(color:Colors.black,fontSize:SizeConfig.blockSizeVertical * 2.5))
                        ],
                      ),
                    ),
                     SizedBox(
                      height: MediaQuery.of(context).size.height/10,
                      child:FlatButton(
                        child: Text("WORKOUT PAGE 1",style:TextStyle(color:Colors.white,fontSize:SizeConfig.blockSizeVertical * 3.5),),
                        color: Colors.red,
                        onPressed: (){},
                      ),
                    ),
                    
                  ],
                )
                
              ),
            ),
            // new Container(
            //   color: Colors.teal,
            //   child: new Center(
            //     child: new Text(
            //       "Third",
            //       style: textStyle(),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
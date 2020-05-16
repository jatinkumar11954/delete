import 'package:flutter/material.dart';
import 'package:Activity/json/resultjson.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontFamily: "CharterBT",
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: (MediaQuery.of(context).size.height) * 0.025,
    );
    final Json snap = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: new IconButton(
    icon: new Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), 
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                snap.title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.end,
              ),
              background: Hero(
                tag: snap.post,
                child: Image.network(
                  snap.post,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Card(
                  margin: EdgeInsets.only(top: 15, left: 10, right: 10),
                  elevation: 5.0,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        right: MediaQuery.of(context).size.width * 0.05,
                        top: MediaQuery.of(context).size.height * 0.05,
                        bottom: MediaQuery.of(context).size.height * 0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Title          :",
                                style: style,
                                textAlign: TextAlign.justify,
                              ),
                              Expanded(
                                child: Text(snap.title, style: style
                                    // ,textAlign: TextAlign.justify,
                                    ),
                              ),
                            ]),
                        SizedBox(height: 10),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Released   :",
                                style: style,
                                textAlign: TextAlign.justify,
                              ),
                              Expanded(
                                child: Text(snap.rel != null ? snap.rel : "N/A",
                                    style: style
                                    // ,textAlign: TextAlign.justify,
                                    ),
                              ),
                            ]),
                        SizedBox(height: 10),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Runtime   :",
                                style: style,
                                textAlign: TextAlign.justify,
                              ),
                              Expanded(
                                child: Text(snap.run != null ? snap.run : "N/A",
                                    style: style
                                    // ,textAlign: TextAlign.justify,
                                    ),
                              ),
                            ]),
                        SizedBox(height: 10),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Director   :",
                                style: style,
                                textAlign: TextAlign.justify,
                              ),
                              Expanded(
                                child: Text(snap.dir != null ? snap.dir : "N/A",
                                    style: style
                                    // ,textAlign: TextAlign.justify,
                                    ),
                              ),
                            ]),
                        SizedBox(height: 10),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Genre      :",
                                style: style,
                                textAlign: TextAlign.justify,
                              ),
                              Expanded(
                                child: Text(
                                    snap.genre != null ? snap.genre : "N/A",
                                    style: style
                                    // ,textAlign: TextAlign.justify,
                                    ),
                              ),
                            ]),
                        SizedBox(height: 10),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Actors      :",
                                style: style,
                                textAlign: TextAlign.justify,
                              ),
                              Expanded(
                                child: Text(snap.act != null ? snap.act : "N/A",
                                    style: style
                                    // ,textAlign: TextAlign.justify,
                                    ),
                              ),
                            ]),
                        SizedBox(height: 10),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Plot          :",
                                style: style,
                                textAlign: TextAlign.justify,
                              ),
                              Expanded(
                                child: Text(
                                    snap.plot != null ? snap.plot : "N/A",
                                    style: style
                                    // ,textAlign: TextAlign.justify,
                                    ),
                              ),
                            ]),
                        SizedBox(height: 10),

                        SizedBox(height: 10),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Language :",
                                style: style,
                                textAlign: TextAlign.justify,
                              ),
                              Expanded(
                                child: Text(
                                    snap.lang != null ? snap.lang : "N/A",
                                    style: style
                                    // ,textAlign: TextAlign.justify,
                                    ),
                              ),
                            ]),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Writer      :",
                                style: style,
                                textAlign: TextAlign.justify,
                              ),
                              Expanded(
                                child: Text(snap.wri != null ? snap.wri : "N/A",
                                    style: style
                                    // ,textAlign: TextAlign.justify,
                                    ),
                              ),
                            ]),
                        SizedBox(height: 10),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "DVD        :",
                                style: style,
                                textAlign: TextAlign.justify,
                              ),
                              Expanded(
                                child: Text(snap.dvd != null ? snap.dvd : "N/A",
                                    style: style
                                    // ,textAlign: TextAlign.justify,
                                    ),
                              ),
                            ]),

                        //      SizedBox(height: 10),
                        // Row(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: <Widget>[
                        //       Text(
                        //         "Post  :",
                        //         style: style,
                        //         textAlign: TextAlign.justify,
                        //       ),
                        //       Expanded(
                        //         child: Text(snap.post, style: style
                        //             // ,textAlign: TextAlign.justify,
                        //             ),
                        //       ),
                        //     ]),
                        SizedBox(height: 15),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "ImdbRating :",
                                style: style,
                                textAlign: TextAlign.justify,
                              ),
                              Expanded(
                                child: Text(
                                    snap.imdb != null ? snap.imdb : "N/A",
                                    style: style
                                    // ,textAlign: TextAlign.justify,
                                    ),
                              ),
                            ]),
                        SizedBox(height: 10),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "ImdbVotes   :",
                                style: style,
                                textAlign: TextAlign.justify,
                              ),
                              Expanded(
                                child: Text(
                                    snap.votes != null ? snap.votes : "N/A",
                                    style: style
                                    // ,textAlign: TextAlign.justify,
                                    ),
                              ),
                            ]),

                        SizedBox(height: 10),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "BoxOffice    :",
                                style: style,
                                textAlign: TextAlign.justify,
                              ),
                              Expanded(
                                child: Text(snap.box != null ? snap.box : "N/A",
                                    style: style
                                    // ,textAlign: TextAlign.justify,
                                    ),
                              ),
                            ]),
                        SizedBox(height: 10),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Production  :",
                                style: style,
                                textAlign: TextAlign.justify,
                              ),
                              Expanded(
                                child: Text(
                                    snap.prod != null ? snap.prod : "N/A",
                                    style: style
                                    // ,textAlign: TextAlign.justify,
                                    ),
                              ),
                            ]),
                        SizedBox(height: 10),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Website       :",
                                style: style,
                                textAlign: TextAlign.justify,
                              ),
                              Expanded(
                                child: Text(snap.web != null ? snap.web : "N/A",
                                    style: style
                                    // ,textAlign: TextAlign.justify,
                                    ),
                              ),
                            ]),
                        SizedBox(height: 10),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "MetaScore  :",
                                style: style,
                                textAlign: TextAlign.justify,
                              ),
                              Expanded(
                                child: Text(
                                    snap.meta != null ? snap.meta : "N/A",
                                    style: style
                                    // ,textAlign: TextAlign.justify,
                                    ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

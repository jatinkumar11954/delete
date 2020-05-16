import 'package:flutter/material.dart';

import 'package:Activity/json/resultjson.dart';

class Grid extends StatelessWidget {
  final List<Movie> movies;
  final Function Click;

  Grid({this.movies, this.Click});

  @override
  Widget build(context) {
    // print(movies[1].poster);
    return new Container(
      decoration: BoxDecoration(color: Colors.grey),
      child: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: movies.length,
        itemBuilder: (ctx, i) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.30,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 4.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          this.Click(this.movies[i]);
                        },
                        child: SizedBox(
                          height: (MediaQuery.of(context).size.height) * 0.32,
                          child: Hero(
                            tag: movies[i].poster,
                            child: Image.network(
                              movies[i].poster,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              this.Click(this.movies[i]);
                            },
                            child: Text(
                              movies[i].title,
                              style: TextStyle(
                                fontFamily: "CharterBT",
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: (MediaQuery.of(context).size.height) *
                                    0.020,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                this.Click(this.movies[i]);
                              },
                              child: Text(movies[i].year),
                            ),
                          )
                        ],
                      )
                    ]),
              ),
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 55 / 100,
          crossAxisSpacing: 12,
          mainAxisSpacing: 10,
        ),
      ),

    );
  }
}

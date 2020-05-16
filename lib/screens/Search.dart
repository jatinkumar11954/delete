import 'package:flutter/material.dart';
import 'package:Activity/grid/Grid.dart';
import 'package:Activity/json/resultjson.dart';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as hp;
import 'dart:convert';

class Search extends StatefulWidget {
  @override
  SearchState createState() => SearchState();
}

class SearchState extends State<Search> {
  Json snap;
  final searchTextController = new TextEditingController();
  String searchText = "";
  Future<List<Movie>> searchMovies(keyword) async {
    final response =
        await hp.get('http://www.omdbapi.com/?apikey=a1b5f9ec&s=$keyword');

    if (response.statusCode == 200) {
      Map data = json.decode(response.body);

      if (data['Response'] == "True") {
        var list = (data['Search'] as List)
            .map((item) => new Movie.fromJson(item))
            .toList();
        return list;
      } else {
        throw Exception(data['Error']);
      }
    } else {
      throw Exception('Something went wrong !');
    }
  }

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  void Click(Movie item) async {
    final response = await hp
        .get('http://www.omdbapi.com/?apikey=a1b5f9ec&i=${item.imdbID}');

    if (response.statusCode == 200) {
      Map data = json.decode(response.body);

      if (data['Response'] == "True") {
        snap = Json.fromJSON(data);
      } else {
        throw Exception(data['Error']);
      }
    } else {
      throw Exception('There is a problem');
    }

    Navigator.pushNamed(context, "Result", arguments: snap);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Search Movies')),
        ),
        body: Column(
          children: <Widget>[
            
            Container(
              child: Row(children: <Widget>[
                Flexible(
                  child: TextField(
                    controller: searchTextController,
                    decoration:
                        InputDecoration(hintText: 'Enter a search term'),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search Movies',
                  onPressed: () {
                    setState(() {
                      searchText = searchTextController.text;
                      SystemChannels.textInput.invokeMethod('TextInput.hide');
                    });
                  },
                ),
              ]),
              padding: EdgeInsets.all(10),
            ),
            if (searchText.length > 0)
              FutureBuilder<List<Movie>>(
                  future: searchMovies(searchText),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Expanded(
                          child: Grid(
                              movies: snapshot.data,
                              Click: this.Click));
                    } else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }
                    return CircularProgressIndicator();
                  }),
          ],
        ));
  }
}

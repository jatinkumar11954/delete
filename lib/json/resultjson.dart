class Json {
  final String title;
  final String rel;
  final String year;
  final String rat;
  final String run;
  final String genre;
  final String dir;
  final String wri;
  final String act;
  final String lang;
  final String plot;
  final String post;
  final String imdb;
  final String votes;
  final String dvd;
  final String box;
  final String prod;
  final String web;

  final String meta;

  Json(
      {this.title,
      this.rel,
      this.year,
      this.rat,
      this.run,
      this.genre,
      this.dir,
      this.act,
      this.lang,
      this.wri,
      this.plot,
      this.post,
      this.imdb,
      this.votes,
      this.dvd,
      this.box,
      this.prod,
      this.web,
      this.meta});

  factory Json.fromJSON(Map<String, dynamic> json) {
    return Json(
        title: json['Title'],
        rel: json['Released'],
        year: json['Year'],
        rat: json['Rated'],
        run: json['Runtime'],
        genre: json['Genre'],
        dir: json['Director'],
        act: json['Actors'],
        lang: json['Language'],
        wri: json['Writer'],
        plot: json['Plot'],
        post: json['Poster'],
        imdb: json['imdbRating'],
        votes: json['imdbVotes'],
        dvd: json['DVD'],
        box: json['BoxOffice'],
        prod: json['Production'],
        web: json['Website'],
        meta: json['Metascore']);
  }
}

class Movie {
  final String title;
  final String year;
  final String type;
  final String poster;
  final String imdbID;

  Movie({this.title, this.year, this.type, this.poster, this.imdbID});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        title: json['Title'],
        year: json['Year'],
        type: json['Type'],
        poster: json['Poster'],
        imdbID: json['imdbID']);
  }
}

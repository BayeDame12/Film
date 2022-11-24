class Film {
  late int _id;
  late String _original_language;
  late String _original_title;
  late String _backdrop_path;
  late String _poster_path;
  late String _release_date;
  late String _overview;
  late String _vote_average;
  late String _video;
  late String _vote_count;
  late String _title;

  Film(
      this._backdrop_path,
      this._original_language,
      this._original_title,
      this._overview,
      this._poster_path,
      this._release_date,
      this._title,
      this._video,
      this._vote_average,
      this._vote_count,
      this._id);

  Film.fromjson(Map<String, dynamic> json) {
    _id = json["id"];
    _original_language = json["original_language"];
    _original_title = json["original_title"];
    _backdrop_path = json["backdrop_path"];
    _release_date = json["release_date"];
    _overview = json["overview"];
    _vote_average = json["vote_average"];
    _vote_count = json["vote_count"];
    _title = json["title"];
    _video = json["video"];
    _poster_path = json["poster_path"];
  }

  Film.fromMap(Map<String, dynamic> map) {
    _id = map["id"];
    _original_language = map["original_language"];
    _original_title = map["original_title"];
    _backdrop_path = map["backdrop_path"];
    _release_date = map["release_date"];
    _overview = map["overview"];
    _vote_average = map["vote_average"];
    _vote_count = map["vote_count"];
    _title = map["title"];
    _video = map["video"];
    _poster_path = map["poster_path"];
  }
  Map<String, dynamic> TrackListToMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map["id"] = this._id;
    map["original_language"] = this._original_language;
    map["original_title"] = this._title;
    map["backdrop_path"] = this._poster_path;
    map["release_date"] = this._release_date;
    map["overview"] = this._overview;
    map["vote_average"] = this._vote_average;
    map["vote_count"] = this._vote_count;
    map["title"] = this._title;
    map["video"] = this._video;
    map["poster_path"] = this._poster_path;

    return map;
  }
}

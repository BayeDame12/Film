import 'package:json_annotation/json_annotation.dart';
part 'film.model.g.dart';

@JsonSerializable()
class Film {
  const Film(
      {required this.id,
      required this.original_language,
      required this.original_title,
      required this.backdrop_path,
      required this.poster_path,
      required this.release_date,
      required this.overview,
      required this.vote_average,
      required this.video,
      required this.vote_count,
      required this.title});
  factory Film.fromJson(Map<String, dynamic> json) => _$FilmFromJson(json);

  /// Convertir un TODO en Json
  Map<String, dynamic> toJson() => _$FilmToJson(this);

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'original_language')
  final String original_language;

  @JsonKey(name: 'original_title')
  final String original_title;

  @JsonKey(name: 'overview')
  final String overview;

  @JsonKey(name: 'backdrop_path')
  final String backdrop_path;

  @JsonKey(name: 'poster_path')
  final String poster_path;

  @JsonKey(name: 'release_date')
  final String release_date;

  @JsonKey(name: 'vote_average')
  final double vote_average;

  @JsonKey(name: 'video')
  final bool video;

  @JsonKey(name: 'vote_count')
  final int vote_count;

  @JsonKey(name: 'title')
  final String title;
}

// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:movies/features/movies/domain/entities/movie_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel extends MovieEntity {
  const MovieModel({
    required super.backdrop_path,
    required super.id,
    required super.original_title,
    required super.overview,
    required super.popularity,
    required super.poster_path,
    required super.title,
    required super.vote_average,
    required super.vote_count,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);

  factory MovieModel.fromMovieEntity(MovieEntity movie) => MovieModel(
        backdrop_path: movie.backdrop_path,
        id: movie.id,
        original_title: movie.original_title,
        overview: movie.overview,
        popularity: movie.popularity,
        poster_path: movie.poster_path,
        title: movie.title,
        vote_average: movie.vote_average,
        vote_count: movie.vote_count,
      );
}

// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final String? backdrop_path;
  final int id;
  final String original_title;
  final String overview;
  final double popularity;
  final String? poster_path;
  final String title;
  final double vote_average;
  final double vote_count;

  const MovieEntity({
    required this.backdrop_path,
    required this.id,
    required this.original_title,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.title,
    required this.vote_average,
    required this.vote_count,
  });

  @override
  List<Object?> get props => [
        backdrop_path,
        id,
        original_title,
        overview,
        popularity,
        poster_path,
        title,
        vote_average,
        vote_count,
      ];
}

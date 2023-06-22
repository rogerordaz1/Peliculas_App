// ignore_for_file: non_constant_identifier_names

import 'package:equatable/equatable.dart';
import 'package:movies/features/movies/domain/entities/dates_entity.dart';
import 'package:movies/features/movies/domain/entities/movie_entity.dart';

class RespApiEntity extends Equatable {
  final DatesEntity? dates;
  final int page;
  final List<MovieEntity> results;
  final int total_pages;
  final int total_results;

  const RespApiEntity({
    required this.dates,
    required this.page,
    required this.results,
    required this.total_pages,
    required this.total_results,
  });

  @override
  List<Object?> get props => [
        dates,
        page,
        results,
        total_pages,
        total_results,
      ];
}

// ignore_for_file: non_constant_identifier_names, overridden_fields, annotate_overrides, depend_on_referenced_packages

import 'package:movies/features/movies/data/models/dates_model/dates_model.dart';
import 'package:movies/features/movies/data/models/movie_model/movie_model.dart';
import 'package:movies/features/movies/domain/entities/resp_api_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resp_api_model.g.dart';

@JsonSerializable()
class ResApiModel extends RespApiEntity {
  final DatesModel? dates;
  final List<MovieModel> results;

  const ResApiModel({
    required this.dates,
    required this.results,
    required super.page,
    required super.total_pages,
    required super.total_results,
  }) : super(dates: dates, results: results);

  factory ResApiModel.fromJson(Map<String, dynamic> json) =>
      _$ResApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResApiModelToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'package:movies/features/movies/domain/entities/movie_detail_entity.dart';

part 'movie_genre_model.g.dart';

@JsonSerializable()
class GenreModel extends Genre {
  const GenreModel({
    required super.id,
    required super.name,
  });

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);

  Map<String, dynamic> toJson() => _$GenreModelToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'package:movies/features/movies/domain/entities/movie_detail_entity.dart';

part 'movie_spoken_language_model.g.dart';

@JsonSerializable()
class SpokenLanguageModel extends SpokenLanguage {
  const SpokenLanguageModel({
    
    required super.englishName,
    required super.iso6391,
    required super.name,
  });

  factory SpokenLanguageModel.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguageModelFromJson(json);

  
  Map<String, dynamic> toJson() => _$SpokenLanguageModelToJson(this);
}

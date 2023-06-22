import 'package:json_annotation/json_annotation.dart';
import 'package:movies/features/movies/domain/entities/movie_detail_entity.dart';

part 'movie_production_country_model.g.dart';

@JsonSerializable()
class ProductionCountryModel extends ProductionCountry {
  const ProductionCountryModel({
    required super.iso31661,
    required super.name,
  });

  factory ProductionCountryModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountryModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCountryModelToJson(this); 
}

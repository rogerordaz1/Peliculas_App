import 'package:json_annotation/json_annotation.dart';
import 'package:movies/features/movies/domain/entities/movie_detail_entity.dart';

part 'movie_production_company_model.g.dart';

@JsonSerializable()
class ProductionCompanyModel extends ProductionCompany {
  
  final String? logoPathString;
  const ProductionCompanyModel({
    required super.id,
    this.logoPathString,
    required super.name,
    required super.originCountry,
  }) : super(logoPath: logoPathString);

  factory ProductionCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCompanyModelToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'package:movies/features/movies/data/models/movie_genre/movie_genre_model.dart';
import 'package:movies/features/movies/data/models/movie_production_company_model/movie_production_company_model.dart';
import 'package:movies/features/movies/data/models/movie_spoken_language_model/movie_spoken_language_model.dart';
import 'package:movies/features/movies/data/models/production_country_model/movie_production_country_model.dart';
import 'package:movies/features/movies/domain/entities/movie_detail_entity.dart';

part 'movie_detail_model.g.dart';

@JsonSerializable()
class MovieDetailModel extends MovieDetailEntity {
  final List<GenreModel> genresList;
  final List<SpokenLanguageModel> spokenLanguagesList;
  final List<ProductionCompanyModel> productionCompaniesList;
  final List<ProductionCountryModel> productionCountriesList;

  const MovieDetailModel({
    required this.genresList,
    required this.spokenLanguagesList,
    required this.productionCompaniesList,
    required this.productionCountriesList,
    required super.adult,
    required super.budget,
    required super.id,
    required super.originalLanguage,
    required super.originalTitle,
    required super.overview,
    required super.popularity,
    required super.releaseDate,
    required super.revenue,
    required super.runtime,
    required super.status,
    required super.tagline,
    required super.title,
    required super.video,
    required super.voteAverage,
    required super.voteCount,
  }) : super(
          genres: genresList,
          spokenLanguages: spokenLanguagesList,
          productionCompanies: productionCompaniesList,
          productionCountries: productionCountriesList,
        );

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailModelToJson(this);
}

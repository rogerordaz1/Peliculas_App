// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_production_company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductionCompanyModel _$ProductionCompanyModelFromJson(
        Map<String, dynamic> json) =>
    ProductionCompanyModel(
      id: json['id'] as int,
      logoPathString: json['logo_path'] ?? '',
      name: json['name'] as String,
      originCountry: json['origin_country'] as String,
    );

Map<String, dynamic> _$ProductionCompanyModelToJson(
        ProductionCompanyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_path': instance.logoPathString,
      'origin_country': instance.originCountry,
    };

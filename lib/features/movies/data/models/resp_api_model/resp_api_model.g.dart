// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResApiModel _$ResApiModelFromJson(Map<String, dynamic> json) => ResApiModel(
      dates: json['dates'] == null
          ? null
          : DatesModel.fromJson(json['dates'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: json['page'] as int,
      total_pages: json['total_pages'] as int,
      total_results: json['total_results'] as int,
    );

Map<String, dynamic> _$ResApiModelToJson(ResApiModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.total_pages,
      'total_results': instance.total_results,
      'dates': instance.dates,
      'results': instance.results,
    };

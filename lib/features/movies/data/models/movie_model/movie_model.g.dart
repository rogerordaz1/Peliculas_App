// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      backdrop_path: json['backdrop_path'] as String?,
      id: json['id'] as int,
      original_title: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      poster_path: json['poster_path'] as String?,
      title: json['title'] as String,
      vote_average: (json['vote_average'] as num).toDouble(),
      vote_count: (json['vote_count'] as num).toDouble(),
    );

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdrop_path,
      'id': instance.id,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.poster_path,
      'title': instance.title,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
    };

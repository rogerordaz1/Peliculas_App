// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActorModel _$ActorModelFromJson(Map<String, dynamic> json) => ActorModel(
      popularity: (json['popularity'] as num).toDouble(),
      name: json['name'] as String,
      original_name: json['original_name'] as String,
      profile_path: json['profile_path'] as String?,
    );

Map<String, dynamic> _$ActorModelToJson(ActorModel instance) =>
    <String, dynamic>{
      'popularity': instance.popularity,
      'name': instance.name,
      'original_name': instance.original_name,
      'profile_path': instance.profile_path,
    };

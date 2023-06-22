// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_cast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RespCastModel _$RespCastModelFromJson(Map<String, dynamic> json) =>
    RespCastModel(
      id: json['id'] as int,
      cast: (json['cast'] as List<dynamic>)
          .map((e) => ActorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RespCastModelToJson(RespCastModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
    };

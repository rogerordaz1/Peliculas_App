// ignore_for_file: annotate_overrides, overridden_fields

import 'package:json_annotation/json_annotation.dart';
import 'package:movies/features/movies/data/models/actor_model/actor_model.dart';
import 'package:movies/features/movies/domain/entities/resp_cast_entity.dart';

part 'resp_cast_model.g.dart';

@JsonSerializable()
class RespCastModel extends RespApiCastEntity {
  final List<ActorModel> cast;

  const RespCastModel({
    required super.id,
    required this.cast,
  }) : super(cast: cast);

  factory RespCastModel.fromJson(Map<String, dynamic> json) =>
      _$RespCastModelFromJson(json);

  Map<String, dynamic> toJson() => _$RespCastModelToJson(this);
}

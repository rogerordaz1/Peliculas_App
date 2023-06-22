// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'package:movies/features/movies/domain/entities/actor_entity.dart';

part 'actor_model.g.dart';

@JsonSerializable()
class ActorModel extends ActorEntity {
  const ActorModel({
    required super.popularity,
    required super.name,
    required super.original_name,
    required super.profile_path,
  });
  factory ActorModel.fromJson(Map<String, dynamic> json) =>
      _$ActorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ActorModelToJson(this);
}

// ignore_for_file: depend_on_referenced_packages

import 'package:movies/features/movies/domain/entities/dates_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dates_model.g.dart';

@JsonSerializable()
class DatesModel extends DatesEntity {
  const DatesModel({
    required super.maximum,
    required super.minimum,
  });
  factory DatesModel.fromJson(Map<String, dynamic> json) =>
      _$DatesModelFromJson(json);

  Map<String, dynamic> toJson() => _$DatesModelToJson(this);
}

import 'package:equatable/equatable.dart';
import 'package:movies/features/movies/domain/entities/actor_entity.dart';

class RespApiCastEntity extends Equatable {
  final int id;
  final List<ActorEntity> cast;

  const RespApiCastEntity({
    required this.id,
    required this.cast,
  });

  @override
  List<Object?> get props => [id, cast];
}

import 'package:dartz/dartz.dart';
import 'package:movies/core/error/error.dart';
import 'package:movies/core/use_cases/use_cases.dart';
import 'package:movies/features/movies/domain/entities/actor_entity.dart';
import 'package:movies/features/movies/domain/repositories/movie_respository.dart';

class CastMovieXidUseCase extends UseCase<List<ActorEntity>, ParamMovieID> {
  final MovieRepository repository;

  CastMovieXidUseCase(this.repository);

  @override
  Future<Either<Failure, List<ActorEntity>>> call(ParamMovieID params) async {
    return await repository.castMovieXid(params.id);
  }
}

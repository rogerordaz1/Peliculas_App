import 'package:dartz/dartz.dart';
import 'package:movies/core/error/error.dart';
import 'package:movies/core/use_cases/use_cases.dart';
import 'package:movies/features/movies/domain/entities/movie_detail_entity.dart';
import 'package:movies/features/movies/domain/repositories/movie_respository.dart';

class GetMovieDetail extends UseCase<MovieDetailEntity, ParamMovieID> {
  final MovieRepository repository;

  GetMovieDetail(this.repository);

  @override
  Future<Either<Failure, MovieDetailEntity>> call(ParamMovieID params) async {
    return await repository.getMovieDetail(params.id);
  }
}

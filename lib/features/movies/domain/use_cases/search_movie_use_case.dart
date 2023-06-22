import 'package:dartz/dartz.dart';
import 'package:movies/core/error/error.dart';
import 'package:movies/core/use_cases/use_cases.dart';
import 'package:movies/features/movies/domain/entities/movie_entity.dart';
import 'package:movies/features/movies/domain/repositories/movie_respository.dart';

class SearchMovieUseCase extends UseCase<List<MovieEntity>, ParamQuery> {
  final MovieRepository repository;

  SearchMovieUseCase(this.repository);

  @override
  Future<Either<Failure, List<MovieEntity>>> call(ParamQuery params) async {
    return await repository.searchMovie(params.query);
  }
}

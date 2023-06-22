import 'package:dartz/dartz.dart';
import 'package:movies/core/error/error.dart';
import 'package:movies/core/use_cases/use_cases.dart';
import 'package:movies/features/movies/domain/entities/movie_entity.dart';
import 'package:movies/features/movies/domain/repositories/movie_respository.dart';

class PopularUseCase extends UseCase<List<MovieEntity>, ParamPage> {
  final MovieRepository repository;

  PopularUseCase(this.repository);

  @override
  Future<Either<Failure, List<MovieEntity>>> call(ParamPage params) async {
    return await repository.popular(params.page);
  }
}

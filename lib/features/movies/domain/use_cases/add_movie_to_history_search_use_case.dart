import 'package:dartz/dartz.dart';
import 'package:movies/core/error/error.dart';
import 'package:movies/core/use_cases/use_cases.dart';
import 'package:movies/features/movies/domain/repositories/movie_respository.dart';

class AddMovieToHistorySearchUseCase extends UseCase<void, ParamsMovieEntity> {
  final MovieRepository repository;

  AddMovieToHistorySearchUseCase(this.repository);

  @override
  Future<Either<Failure, void>> call(ParamsMovieEntity params) async {
    return await repository.addMovieToHistorySearch(params.movie);
  }
}

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/core/error/error.dart';
import 'package:movies/core/use_cases/use_cases.dart';
import 'package:movies/features/movies/domain/entities/movie_entity.dart';
import 'package:movies/features/movies/domain/repositories/movie_respository.dart';

class NowPlayingUseCase extends UseCase<List<MovieEntity>, ParamPage> {
  final MovieRepository repository;

  NowPlayingUseCase(this.repository);

  @override
  Future<Either<Failure, List<MovieEntity>>> call(ParamPage params) async {
    return await repository.nowPlaying(params.page);
  }
}

class ParamPage extends Equatable {
  final String page;

  const ParamPage(this.page);

  @override
  List<Object?> get props => [page];
}

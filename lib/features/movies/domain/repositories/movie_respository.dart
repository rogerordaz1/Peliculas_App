import 'package:dartz/dartz.dart';
import 'package:movies/core/error/error.dart';
import 'package:movies/features/movies/domain/entities/actor_entity.dart';
import 'package:movies/features/movies/domain/entities/movie_detail_entity.dart';
import 'package:movies/features/movies/domain/entities/movie_entity.dart';

abstract class MovieRepository {
  Future<Either<Failure, List<MovieEntity>>> nowPlaying(String page);
  Future<Either<Failure, MovieDetailEntity>> getMovieDetail(String id);
  Future<Either<Failure, List<MovieEntity>>> popular(String page);
  Future<Either<Failure, List<MovieEntity>>> topRated(String page);
  Future<Either<Failure, List<MovieEntity>>> upComing(String page);
  Future<Either<Failure, List<MovieEntity>>> searchMovie(String query);
  Future<Either<Failure, void>> addMovieToHistorySearch(MovieEntity movie);
  Future<Either<Failure, List<ActorEntity>>> castMovieXid(String id);
}

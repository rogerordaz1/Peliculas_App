import 'package:movies/features/movies/data/models/movie_model/movie_model.dart';

abstract class MovieLocalDataSource {
  Future<List<MovieModel>> historySearch();
  Future<void> addMovieToHistorySearch(MovieModel movie);
}

import 'dart:convert';

import 'package:movies/core/error/exception.dart';
import 'package:movies/features/movies/data/data_sources/movie_local_data_source.dart';
import 'package:movies/features/movies/data/models/movie_model/movie_model.dart';

import 'package:shared_preferences/shared_preferences.dart';

class MovieLocalDataSourceImpl extends MovieLocalDataSource {
  final SharedPreferences preferences;

  MovieLocalDataSourceImpl(this.preferences);

  @override
  Future<List<MovieModel>> historySearch() async {
    try {
      final dataCache = preferences.getString('movies');
      if (dataCache != null) {
        final data = jsonDecode(dataCache) as List;
        final movies =
            data.map((movie) => MovieModel.fromJson(movie)).toSet().toList();
        return movies;
      }
      return [];
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> addMovieToHistorySearch(MovieModel movie) async {
    try {
      final movies = await historySearch();
      movies.insert(0, movie);
      if (movies.length >= 10) {
        movies.removeLast();
      }
      final encode =
          movies.map((movie) => jsonEncode(movie.toJson())).toSet().toList();

      await preferences.setString('movies', encode.toString());
    } catch (e) {
      throw CacheException();
    }
  }
}

import 'dart:convert';

import 'package:movies/const_app.dart';
import 'package:movies/core/error/exception.dart';
import 'package:movies/features/movies/data/data_sources/movie_remote_data_source.dart';
import 'package:movies/features/movies/data/models/actor_model/actor_model.dart';
import 'package:movies/features/movies/data/models/movie_detail_model/movie_detail_model.dart';
import 'package:movies/features/movies/data/models/movie_model/movie_model.dart';
import 'package:movies/features/movies/data/models/resp_api_model/resp_api_model.dart';
import 'package:http/http.dart' as http;
import 'package:movies/features/movies/data/models/resp_cast_model/resp_cast_model.dart';

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  final http.Client client;

  MovieRemoteDataSourceImpl(this.client);

  @override
  Future<List<MovieModel>> nowPlaying(String page) async {
    return await _getMovies(path: 'now_playing', page: page);
  }

  @override
  Future<List<MovieModel>> popular(String page) async {
    return await _getMovies(path: 'popular', page: page);
  }

  @override
  Future<List<MovieModel>> topRated(String page) async {
    return await _getMovies(path: 'top_rated', page: page);
  }

  @override
  Future<List<MovieModel>> upComing(String page) async {
    return await _getMovies(path: 'upcoming', page: page);
  }

  @override
  Future<List<ActorModel>> castMovieXid(String id) async {
    final url = Uri.https('api.themoviedb.org', '3/movie/$id/credits', {
      'api_key': ConstApp.apiKey,
      'language': 'en-US',
    });
    try {
      final response = await client.get(url);
      final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
      final cast = RespCastModel.fromJson(jsonMap).cast;
      final castFilter =
          cast.where((actor) => actor.profile_path != null).toList();
      return castFilter;
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<List<MovieModel>> searchMovie(String query) async {
    final url = Uri.https('api.themoviedb.org', '3/search/movie', {
      'api_key': ConstApp.apiKey,
      'language': 'en-US',
      'query': query,
    });
    try {
      final response = await client.get(url);
      final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
      final movies = ResApiModel.fromJson(jsonMap).results;
      final moviesFilter = movies
          .where((m) => m.poster_path != null && m.backdrop_path != null)
          .toList();
      return moviesFilter;
    } catch (_) {
      throw ServerException();
    }
  }

  Future<List<MovieModel>> _getMovies({
    required String path,
    required String page,
  }) async {
    final url = Uri.https('api.themoviedb.org', '3/movie/$path', {
      'api_key': ConstApp.apiKey,
      'language': 'en-US',
      'page': page,
    });
    try {
      final response = await client.get(url);
      final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
      final movies = ResApiModel.fromJson(jsonMap).results;
      movies.shuffle();
      final moviesFilter = movies
          .where(
            (movie) => movie.poster_path != null && movie.backdrop_path != null,
          )
          .toList();
      return moviesFilter;
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<MovieDetailModel> getMovieDetail(String id) async {
    final url = Uri.https('api.themoviedb.org', '3/movie/$id', {
      'api_key': ConstApp.apiKey,
      'language': 'en-US',
    });
    try {
      final response = await client.get(url);
      final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
      final movieDetails = MovieDetailModel.fromJson(jsonMap);

      return movieDetails;
    } catch (_) {
      throw ServerException();
    }
  }
}
